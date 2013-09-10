# Overview::Flow::Views

## User Flow

The standard flow for all users will involve **(1)** viewing the product catalog, which grants them total access to see all *Grounds ✘ Grounds* products. A user may then **(2)** click on a product to gain access to additional information. If a customer wishes to purchase this product, and *is not logged in*, they may either **(3a)** register then be redirected to checkout, or **(3b)** or login and be redirected to checkout. If the user is already logged in, they may **(3c)** proceed directly to the checkout.

## Primary Views

Side note regarding the wording of each "view" and "page"  - this is intended to be an abstract definition of which could be applied to a webpage or a native mobile application.

### Product Catalog

The **Product Catalog** gives the user a marketplace in which to view the products we plan on offering (primarily coffee grounds, obviously). Envisioned to be a storefront, similar in nature to something like Steam, where promotional items can be pushed higher in the "stack" and other interesting subcategories can be viewed easily.

NOTE: This is probably the most important page, and will house the largest part of functionality. Nailing the right layout and UX flow for this page will be a huge determining factor in this projects success.

### Product Information

The **Product Information** page(s) will be ancillary content for individual products, providing detailed information on each product either through an independent page, a modal, slide up, or some other delivery mechanism.

This is an extension for the Product Catalog, but allows for easy integration, modularity, and a clutter free Product Catalog by extracting this functionality into an independent component.

I would like to see, at least, the following information for a given product:

1. Name
2. Description
3. Origin
4. Roaster
5. Reviews (text)*
6. Reviews (ranking system)
7. Price
8. Weight

*Given my past experience with building a robust commenting system, that looks good, works well and handles spam effectively - I think it would be best to seriously consider external options that may be embedded into our site (e.g. Disqus).

### Registration

Self described, this is a page with registration for users. I'd like to keep the required fields to a minimum…

1. Email Address
2. Password

There's a few reasons why I think this should be kept to a minimal amount of required fields and login options, primarily that simplicity is the core to any highly successful model. We're striving for convenience here. Additional complexity to the user is a *bad* idea, and should be avoided at all costs.

It's safe to assume that the user would like the option to have a single-click, socially enabled option for registering with G&G, however having a cluttered interface with half a dozen options for logging in, is not appealing.

Another compelling reason for eliminating the social media integration (aside from simplicity) is the declining interest in the use of social media not just in the general sense, but also as a forward facing options for people to compartmentalize their social lives from *the whole fucking web*. There's no reason anyone should need to add more complexity to the shitfuck of a system Facebook has introduced.

Using social media as a login system adds additional complexity for us and the user, with little to no relative gain. We also potentially risk alienating the customer by "posting" or "accessing" information they're not interested in sharing. Placing users within our system, without external dependencies (e.g. Facebook), gives us the control over what we do with user information now and later - there's no constraint on the EULA of other third-party sites to which we must abide. Additionally, going with a single party sign on system alleviates potential downstream risk of changing requirements and accessibility of decaying accounts and / or changes in the API of third-party sites.

I do however agree with the idea of using social media to share deals, products, promotions, etc. This can be used as a powerful tool to help spread awareness and promotional deals efficiently. There isn't much (if any) convenience lost by using a single party sign on system, it's effectively two fields, which is the same number of fields required when signing into Facebook.

### Login

Preferably the user would be kept logged in via cookies, or in the case of a native mobile application a UID for that particular device. The same credentials specified in the registration page would be used to login to G & G.

### Checkout

The checkout page will contain the largest form-based complexity, with multiple required fields for making purchases. This page's details are TBD, as per a pending task to determine the optimal route for processing payment options.

----

## Utility Pages

### Account Management

This is a rather straight forward page that houses the account information for the given signed in user. The primary purpose of this interface is allow the user to update their information, this information will include:

1. Email Address
2. Password
3. Billing Address
    - First Name
    - Last Name
    - Address
    - Unit / Apt.
    - ZIP Code
    - City
    - State
4. Shipping Address
5. Payment Information (details TBD)
6. Gravatar / Avatar (slated for later release)
7. *Remember Me*

If a user has recently signed up and not purchased anything, most of this information will be blank. If the user has made a purchase or proactively added their billing information and have opted in to be *remembered*, this page will be populated with their given information.

Another major feature of the Account Management page is the ability to track and view orders. There should ideally be an hourly update that gives the user basic information about the progress of their purchase.

Another useful feature would be to include a "flash" notification to to encourage the user to populate this interface with all their shipping and billing information proactively, thus simplifying and encouraging additional purchases in the future.

### Admin Interface

This will soon become a mighty and powerful portal for the overlords of Grounds ✘ Grounds when managing orders, customers, B2B transactions, shipping overview, etc. The goal is to give an outward facing interface that gives internal staff with an easy mechanism to look at pending orders, users information, and other administrative tools.

For the sake of keeping the feature list to a MVP, only the bare essentials will be stated - there are *many* more features I'd like to see...

1. Orders information
2. Users information
3. Product information

(more tbd…needs more thought)







