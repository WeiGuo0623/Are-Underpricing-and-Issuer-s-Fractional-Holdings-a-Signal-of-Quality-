/* IPO_US_1998_2017 */

clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin

/* **************************************************************************** */
/* Descriptive Table */
tabstat up lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps , stats (n mean min max sd) long col(stat) format(%9.3f)
tabstat up lncov mv dil, stats (n mean min max sd) long col(stat) format(%9.3f)


/* ***************************************************************************** */
/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
regress mv dil lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete SEO MARRT60 AGE */
regress mv dil lncov nms ta dem li tech roa lev tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv dil lncov nms ta dem li tech roa lev tor eps,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress up mv dil
regress up mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  SEO AGE DEM EPS ROA TECH  */
regress up mv dil nms marrt60 ta li lev tor 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv dil nms marrt60 ta li lev tor ,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress up mv lncov
regress up mv lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress up mv lncov dem li  

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv lncov marrt60 li,robust

/* est store up_model_8
outreg2 up_model_8 using up_model_8.xls, nolabel replace */

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 
regress lncov dil up nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  NMS  ta dem  age lev  eps seo roa  */
regress lncov dil up marrt60 tor li

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil up marrt60 tor li,robust


/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv
regress lncov dil mv nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress lncov dil mv ta age 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil mv ta age ,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */


/*  MODEL 4 Hypothesis: dil is konstant, lncov up negativ */
regress lncov up dil
regress lncov up dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 roa lev seo  */
regress lncov up dil nms marrt60 seo li roa tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov up dil nms marrt60 li tor seo lev,robust

/* Multicollinearity Test */
estat vif




/* ***************************************************************************** */

/*  MODEL 5 Hypothesis: lncov is konstant, dil up negativ */
regress dil up lncov
regress dil up lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 ta seo dem li age roa lev tor eps */
regress dil up lncov nms tech

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress dil up lncov nms tech,robust

/* Multicollinearity Test */
estat vif
 



/* ***************************************************************************** */

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil
regress lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor eps ta nms  */
regress lncov mv dil tech age roa 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil tech age roa ,robust

/* Multicollinearity Test */
estat vif


/* IPO_US_1998_2008_2EXCHANGE */

clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/* **************************************************************************** */
/* Descriptive Table */
tabstat up lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps , stats (n mean min max sd) long col(stat) format(%9.3f)


/* ***************************************************************************** */
/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
regress mv dil lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete SEO MARRT60 AGE */
regress mv dil lncov nms ta dem li tech roa lev tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv dil lncov nms ta dem li tech roa lev tor eps,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress up mv dil
regress up mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  SEO AGE DEM EPS ROA TECH  */
regress up mv dil nms marrt60 ta li lev tor 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv dil nms marrt60 ta li lev tor ,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 
regress lncov dil up nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  NMS  ta dem  age lev  eps seo roa  */
regress lncov dil up marrt60 tor li

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil up marrt60 tor li,robust


/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv
regress lncov dil mv nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress lncov dil mv ta age 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil mv ta age ,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */


/*  MODEL 4 Hypothesis: dil is konstant, lncov up negativ */
regress lncov up dil
regress lncov up dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 roa lev seo  */
regress lncov up dil nms marrt60 seo li roa tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov up dil nms marrt60 li tor seo lev,robust

/* Multicollinearity Test */
estat vif




/* ***************************************************************************** */

/*  MODEL 5 Hypothesis: lncov is konstant, dil up negativ */
regress dil up lncov
regress dil up lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete   ta seo dem age roa eps */
regress dil up lncov marrt60 li lev tor

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress dil up lncov marrt60 li lev tor,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil
regress lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor eps ta nms  */
regress lncov mv dil tech age roa 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil tech age roa ,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress up mv lncov
regress up mv lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress up mv lncov dem li  

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv lncov marrt60 li,robust

/* Multicollinearity Test */
estat vif


/* IPO_US_2009_2017_2EXCHANGE */

clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/* **************************************************************************** */
/* Descriptive Table */
tabstat up lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps , stats (n mean min max sd) long col(stat) format(%9.3f)


/* ***************************************************************************** */
/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
regress mv dil lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete SEO MARRT60 AGE */
regress mv dil lncov nms ta dem li tech roa lev tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv dil lncov nms ta dem li tech roa lev tor eps,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress up mv dil
regress up mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  SEO AGE DEM EPS ROA TECH  */
regress up mv dil nms marrt60 ta li lev tor 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv dil nms marrt60 ta li lev tor ,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 
regress lncov dil up nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  NMS  ta dem  age lev  eps seo roa  */
regress lncov dil up marrt60 tor li

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil up marrt60 tor li,robust


/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv
regress lncov dil mv nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress lncov dil mv ta tech tor 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil mv ta tech tor,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */


/*  MODEL 4 Hypothesis: dil is konstant, lncov up negativ */
regress lncov up dil
regress lncov up dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 roa lev seo  */
regress lncov up dil marrt60 ta li tech tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov up dil marrt60 ta li tech tor eps,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 5 Hypothesis: lncov is konstant, dil up negativ */
regress dil up lncov
regress dil up lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete   ta seo dem age roa eps */
regress dil up lncov marrt60 li lev tor

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress dil up lncov marrt60 li lev tor,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil
regress lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor eps ta nms  */
regress lncov mv dil tech age roa 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil tech age roa ,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress up mv lncov
regress up mv lncov nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress up mv lncov dem li  

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv lncov marrt60 li,robust

/* Multicollinearity Test */
estat vif

/* IPO_US_1998_2017_NMS */

clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/* **************************************************************************** */
/* Descriptive Table */
tabstat up lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps , stats (n mean min max sd) long col(stat) format(%9.3f)


/* ***************************************************************************** */
/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
regress mv dil lncov marrt60 ta seo dem li tech age roa lev tor eps

/* Delete SEO MARRT60 AGE like 2Exchange */
regress mv dil lncov ta dem li tech roa lev tor eps

/* Delete More lev eps roa */
regress mv dil lncov ta dem li tech tor

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv dil lncov ta dem li tech tor,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress up mv dil
regress up mv dil marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  SEO AGE DEM EPS ROA TECH  */
regress up mv dil marrt60 ta li lev tor 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv dil marrt60 ta li lev tor ,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 
regress lncov dil up nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  NMS  ta dem  age lev  eps seo roa  */
regress lncov dil up marrt60 tor li

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil up marrt60 tor li,robust


/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv
regress lncov dil mv marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress lncov dil mv ta age 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil mv ta age ,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */


/*  MODEL 4 Hypothesis: dil is konstant, lncov up negativ */
regress lncov up dil
regress lncov up dil marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 roa lev seo  */
regress lncov up dil marrt60 seo li roa tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov up dil marrt60 li tor seo eps,robust

/* Multicollinearity Test */
estat vif



/* ***************************************************************************** */

/*  MODEL 5 Hypothesis: lncov is konstant, dil up negativ */
regress dil up lncov
regress dil up lncov marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 ta seo dem li age roa lev tor eps */
regress dil up lncov tech

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress dil up lncov tech,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil
regress lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor eps ta nms  */
regress lncov mv dil tech age roa

/* Delete more: roa */ 
regress lncov mv dil tech age

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil tech age,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress up mv lncov
regress up mv lncov marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress up mv lncov dem li  

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv lncov marrt60 li,robust

/* Multicollinearity Test */
estat vif


/* IPO_US_1998_2017_NYSE */

clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")
drop ïisin

/* **************************************************************************** */
/* Descriptive Table */
tabstat up lncov mv dil nms marrt60 ta seo dem li tech age roa lev tor eps , stats (n mean min max sd) long col(stat) format(%9.3f)

/* ***************************************************************************** */
/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
regress mv dil lncov marrt60 ta seo dem li tech age roa lev tor eps

/* Delete SEO MARRT60 AGE DEM TECH EPS */
regress mv dil lncov ta seo li roa lev tor

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv dil lncov ta seo li roa lev tor,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress up mv dil
regress up mv dil marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  SEO AGE DEM EPS ROA TECH  */
regress up mv dil marrt60 ta li lev tor 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv dil marrt60 ta li lev tor ,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 
regress lncov dil up marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  NMS  ta dem  age lev  eps seo roa  */
regress lncov dil up marrt60 tor li

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil up marrt60 tor li,robust


/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv
regress lncov dil mv marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem lev tor eps nms */
regress lncov dil mv ta li tech roa

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov dil mv ta li tech roa ,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */


/* ***************************************************************************** */


/*  MODEL 4 Hypothesis: dil is konstant, lncov up negativ */
regress lncov up dil
regress lncov up dil marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 roa lev seo  */
regress lncov up dil marrt60 seo li roa tor eps

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov up dil marrt60 li tor seo lev,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 5 Hypothesis: lncov is konstant, dil up negativ */
regress dil up lncov
regress dil up lncov marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 ta seo dem li age roa lev tor eps */
regress dil up lncov tech

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress dil up lncov li tor,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil
regress lncov mv dil marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor eps ta nms  */
regress lncov mv dil ta li tech roa

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil ta li tech roa,robust

/* Multicollinearity Test */
estat vif


/* ***************************************************************************** */

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress up mv lncov
regress up mv lncov marrt60 ta seo dem li tech age roa lev tor eps

/* Delete  marrt60 seo dem li lev tor tech eps nms */
regress up mv lncov dem li  

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress up mv lncov marrt60 li,robust

/* Multicollinearity Test */
estat vif



