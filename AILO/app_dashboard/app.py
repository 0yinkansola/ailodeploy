import streamlit as st

st.set_page_config(layout="wide")

st.markdown("""
<style>
[data-testid="stSidebar"] {
    display: none;
}
[data-testid="collapsedControl"] {
    display: none;
}
</style>
""", unsafe_allow_html=True)

import mysql.connector
from connstr import get_connection

conn = get_connection()
cursor = conn.cursor(dictionary=True)




# ----------------------------
# PAGE CONFIG
# ----------------------------
st.set_page_config(page_title="AILO")

st.title("AILO")
st.subheader("Log In")

# ----------------------------
# LOGIN FORM
# ----------------------------
with st.form("login_form"):

    username = st.text_input("Username or email")
    password = st.text_input("Password", type="password")

    submitted = st.form_submit_button("Login")

# ----------------------------
# ERROR HOLDER
# ----------------------------
if "error" not in st.session_state:
    st.session_state.error = ""

# ----------------------------
# LOGIN LOGIC
# ----------------------------
if submitted:

    cursor.execute(
        "SELECT * FROM users WHERE email=%s AND password=%s",
        (username, password)
    )

    user = cursor.fetchone()

    if user:

        # STORE SESSION
        st.session_state.logged_in = True
        st.session_state.user_email = username
        st.session_state.user = user

        # ROUTE USER
        if user["sp"] is None and user["fr"] is None:
            st.switch_page("pages/placement.py")
        elif user["sp"] is not None and user["fr"] is None:
            st.switch_page("pages/sp_dashboard.py")
        elif user["sp"] is None and user["fr"] is not None:
            st.switch_page("pages/fr_dashboard.py")
        else:
            st.switch_page("pages/sp_dashboard.py")

    else:
        st.session_state.error = "Invalid username or password"

# ----------------------------
# ERROR DISPLAY (like your PHP span)
# ----------------------------
if st.session_state.error:
    st.error(st.session_state.error)
    
    
st.markdown("---")

st.write("Don't have an account?")
if st.button("Sign up here"):
    st.switch_page("pages/signup.py")