CREATE TABLE "contacts" (
    "contact_id" INTEGER   NOT NULL PRIMARY KEY,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR(250)   NOT NULL
);
select * from "contacts"
CREATE TABLE "category" (
    "category_id" VARCHAR(10)   NOT NULL PRIMARY KEY,
    "category" VARCHAR   NOT NULL
);
select * from "category"
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)   NOT NULL PRIMARY KEY,
    "subcategory" VARCHAR   NOT NULL
);
select * from "subcategory"
CREATE TABLE "campaign" (
    "cf_id" INTEGER   NOT NULL PRIMARY KEY,
    "contact_id" INTEGER   NOT NULL REFERENCES "contacts" ("contact_id"),
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" DECIMAL   NOT NULL,
    "pledged" DECIMAL(10,2)   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL REFERENCES "category" ("category_id"),
    "subcategory_id" VARCHAR(10)   NOT NULL REFERENCES "subcategory" ("subcategory_id")
);
select * from "campaign"