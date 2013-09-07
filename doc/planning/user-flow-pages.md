# Grounds & Grounds

## User Flow

The standard flow for all users will involve **(1)** viewing the product catalog, which grants them total access to see all *Grounds & Grounds* products. A user may then **(2)** click on a product to gain access to additional information. If a customer wishes to purchase this product, and *is not logged in*, they may either **(3a)** register then be redirected to checkout, or **(3b)** or login and be redirected to checkout. If the user is already logged in, they may **(3c)** proceed directly to the checkout.

## Primary Pages

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

1. EMAIL
2. PASSWORD

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

### Admin Interface
