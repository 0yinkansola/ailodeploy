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
cursor = conn.cursor()

st.title("Create Account")

# ----------------------------
# INPUTS
# ----------------------------
email = st.text_input("Email")
password = st.text_input("Password", type="password")

languages = st.multiselect(
    "Languages to Learn",
    ["French", "Spanish"]
)

# ----------------------------
# SUBMIT
# ----------------------------
if st.button("Continue"):

    if not email or not password:
        st.error("Email and password are required.")

    elif not languages:
        st.error("Select at least one language.")

    else:

        # check if user exists
        cursor.execute(
            "SELECT id FROM users WHERE email=%s",
            (email,)
        )
        existing = cursor.fetchone()

        if existing:
            st.error("User already exists.")

        else:

            # ONLY INSERT EMAIL + PASSWORD
            cursor.execute("""
                INSERT INTO users (email, password)
                VALUES (%s, %s)
            """, (email, password))

            conn.commit()

            # store EVERYTHING in session for next page ONLY
            st.session_state["user_email"] = email
            st.session_state["languages"] = languages
            st.session_state["logged_in"] = True

            st.success("Account created successfully!")

            st.switch_page("pages/placement.py")