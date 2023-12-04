{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "d9889739",
   "metadata": {},
   "outputs": [],
   "source": [
    "CREATE DATABASE EMPLOYEES;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "ac06190b",
   "metadata": {},
   "outputs": [],
   "source": [
    "CREATE TABLE employees(EMP_NO PRIMARY KEY, INTEGER,\n",
    "                       EMP_TITLE_ID  VARCHAR(4),\n",
    "                       BIRTH_DATE DATE,\n",
    "                       FIRST_NAME VARCHAR(10),\n",
    "                       LAST_NAME VARCHAR(10),\n",
    "                       SEX VARCHAR(1),\n",
    "                      HIRE_DATE DATE);"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "f77a6455",
   "metadata": {},
   "outputs": [],
   "source": [
    "CREATE TABLE DEPARTMENTS(DEPT_NO PRIMARY KEY, VARCHAR(4),\n",
    "                        DEPT_NAME VARCHAR(20));"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "adaaca91",
   "metadata": {},
   "outputs": [],
   "source": [
    "CREATE TABLE DEPT_EMP(EMP_NO INTEGER, DEPT_NO VARCHAR(10));"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
