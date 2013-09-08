# Overview::DBSchema

Just shooting out what I can think of off the top of my head, needs refinement.

## TABLES

### Users

1. ID [integer]
2. EMAIL [string]
3. PASSWORD [encrypted string]

### Address

1. ID [integer]
2. TYPE [enum]
3. FIRST_NAME [string]
4. LAST_NAME [string]
5. ADDRESS [string]
6. UNIT [string]
7. APT [string]
8. ZIP [integer]
9. CITY [string]
10. STATE [string]

### Payment

- TBD

### Products

1. ID
2. NAME [string]
3. DESCRIPTION [string]
4. ORIGIN [string]
5. ROASTER [string]
6. PRICE [integer]
7. WEIGHT [integer]

### Reviews

TBD - pending integration with external commenting system

### Orders

- ID [integer]
- PURCHASED_DATE [date]
- SHIPPED_DATE [date]
- PRICE [integer]
- TRACKING_INFO [string]
- STATUS [enum]

### Promotions

TBD

## RELATIONSHIPS

- **USER** `has_many` **ORDERS**
- **USER** `has_many` **ADDRESSES**
- **USER** `has_one` **PAYMENT**
- **ORDER** `has_many` **PRODUCTS**
- **PRODUCT** `has_many` **PROMOTIONS**

## Join Tables

1. Users w/ Orders
2. Orders w/ Products
3. Products w/ Promotions

---

1. Users w/ Addresses
2. Users w/ Payment