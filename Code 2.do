/* Implication 1 */

/* ***************************************************************************** */
/* IPO_US_1998_2017_2Exchange */
clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin


/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
/*regress mv dil lncov nms marrt60 ta seo dem li tech age roa lev tor eps*/

/* Delete SEO MARRT60 AGE */
/*regress mv dil lncov nms ta dem li tech roa lev tor eps */

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress mv dil lncov nms ta dem li tech roa lev tor eps,robust*/
regress mv dil lncov nms ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_1_1998_2017_2Ex */

outreg2 implication_1_1998_2017_2Ex using implication_1_1998_2017_2Ex.xls, nolabel replace



/* ***************************************************************************** */
/* IPO_US_1998_2017_NMS */
clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
/*regress mv dil lncov marrt60 ta seo dem li tech age roa lev tor eps */
 
/* Delete SEO MARRT60 AGE like 2Exchange */
/*regress mv dil lncov ta dem li tech roa lev tor eps*/

/* Delete More lev eps roa */
/*regress mv dil lncov ta dem li tech tor*/

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv dil lncov ta dem li tech tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_1_1998_2017_NMS */

outreg2 implication_1_1998_2017_NMS using implication_1_1998_2017_NMS.xls, nolabel replace



/* ***************************************************************************** */
/* IPO_US_1998_2017_NYSE */

clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")

/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
/*regress mv dil lncov marrt60 ta seo dem li tech age roa lev tor eps*/

/* Delete SEO MARRT60 AGE DEM TECH EPS */
/*regress mv dil lncov ta seo li roa lev tor*/

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress mv dil lncov ta seo li roa lev tor,robust*/
regress mv dil lncov ta li roa lev tor,robust
/* Multicollinearity Test */
estat vif

/* est store implication_1_1998_2017_NYSE */

outreg2 implication_1_1998_2017_NYSE using implication_1_1998_2017_NYSE.xls, nolabel replace




/* ***************************************************************************** */
/* IPO_US_1998_2008_2Exchange */
clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
/*regress mv dil lncov nms marrt60 ta seo dem li tech age roa lev tor eps*/

/* Delete SEO MARRT60 AGE */
/*regress mv dil lncov nms ta dem li tech roa lev tor eps*/

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress mv dil lncov nms ta dem li tech roa lev tor eps,robust*/
regress mv dil lncov nms ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_1_1998_2008_2Ex */

outreg2 implication_1_1998_2008_2Ex using implication_1_1998_2008_2Ex.xls, nolabel replace




/* ***************************************************************************** */
/* IPO_US_2009_2017_2Exchange */
clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/*  MODEL 1 Hypothesis: lncov is konstant, mv dil negative  */
regress mv dil lncov
/*regress mv dil lncov nms marrt60 ta seo dem li tech age roa lev tor eps*/

/* Delete SEO MARRT60 AGE */
/*regress mv dil lncov nms ta dem li tech roa lev tor eps */

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress mv dil lncov nms ta dem li tech roa lev tor eps,robust */
regress mv dil lncov nms ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_1_2009_2017_2Ex */

outreg2 implication_1_2009_2017_2Ex using implication_1_2009_2017_2Ex.xls, nolabel replace


/* Implication 2 */
/* ***************************************************************************** */
/* IPO_US_1998_2017_2Exchange */
clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress mv up dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up dil nms ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_2_1998_2017_2Ex */

outreg2 implication_2_1998_2017_2Ex using implication_2_1998_2017_2Ex.xls, nolabel replace




/* ***************************************************************************** */
/* IPO_US_1998_2017_NMS */
clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress mv up dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up dil ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_2_1998_2017_NMS */

outreg2 implication_2_1998_2017_NMS using implication_2_1998_2017_NMS.xls, nolabel replace



/* ***************************************************************************** */
/* IPO_US_1998_2017_NYSE */
clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress mv up dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up dil ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_2_1998_2017_NYSE */

outreg2 implication_2_1998_2017_NYSE using implication_2_1998_2017_NYSE.xls, nolabel replace



/* ***************************************************************************** */
/* IPO_US_1998_2008_2Exchange */
clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress mv up dil 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up dil nms ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_2_1998_2008_2Ex */

outreg2 implication_2_1998_2008_2Ex using implication_2_1998_2008_2Ex.xls, nolabel replace



/* ***************************************************************************** */
/* IPO_US_2009_2017_2Exchange */
clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/*  MODEL 2 Hypothesis: dil ist konstant, up mv positive */ 
regress mv up dil 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up dil nms ta dem li tech roa lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_2_2009_2017_2Ex */

outreg2 implication_2_2009_2017_2Ex using implication_2_2009_2017_2Ex.xls, nolabel replace


/* Implication 3 */
/* ***************************************************************************** */
/* IPO_US_1998_2017_2Exchange */
clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil up nms marrt60 li tech tor,robust */

predict r, resid
gen logusq=ln(r^48)
regress logusq dil up nms li tech tor
predict g, xb 
gen h=exp(g)

regress lncov dil up nms li tech tor [aweight = h]

/* Multicollinearity Test */
estat vif

/* est store implication_3_1998_2017_2Ex */

outreg2 implication_3_1998_2017_2Ex using implication_3_1998_2017_2Ex.xls, nolabel replace



/* ***************************************************************************** */
/* IPO_US_1998_2017_NMS */
clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil up marrt60 tor li,robust */
/*regress lncov dil up marrt60 li tech tor,robust*/

predict r, resid
gen logusq=ln(r^32)
regress logusq dil up li tech tor
predict g, xb 
gen h=exp(g)

regress lncov dil up li tech tor [aweight = h]

/* Multicollinearity Test */
estat vif

/* est store implication_3_1998_2017_NMS */

outreg2 implication_3_1998_2017_NMS using implication_3_1998_2017_NMS.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2017_NYSE */
clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil up marrt60 tor li,robust */
/*regress lncov dil up marrt60 li tech tor,robust*/

predict r, resid
gen logusq=ln(r^6)
regress logusq dil up li tech tor
predict g, xb 
gen h=exp(g)

regress lncov dil up li tech tor [aweight = h]

/* Multicollinearity Test */
estat vif

/* est store implication_3_1998_2017_NYSE */

outreg2 implication_3_1998_2017_NYSE using implication_3_1998_2017_NYSE.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2008_2Exchange */
clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil up marrt60 tor li,robust */
/*regress lncov dil up nms marrt60 li tech tor,robust */

predict r, resid
gen logusq=ln(r^16)
regress logusq dil up nms li tech tor
predict g, xb 
gen h=exp(g)

regress lncov dil up nms li tech tor [aweight = h]

/* Multicollinearity Test */
estat vif

/* est store implication_3_1998_2008_2Ex */

outreg2 implication_3_1998_2008_2Ex using implication_3_1998_2008_2Ex.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_2009_2017_2Exchange */
clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/*  MODEL 3 Hypothesis: up ist konstant, lncov dil negativ  */
regress lncov dil up 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/* regress lncov dil up marrt60 tor li,robust */
/*regress lncov dil up nms li tech tor,robust*/

predict r, resid
gen logusq=ln(r^32)
regress logusq dil up nms li tech tor
predict g, xb 
gen h=exp(g)

regress lncov dil up nms li tech tor [aweight = h]

/* Multicollinearity Test */
estat vif

/* est store implication_3_2009_2017_2Ex */

outreg2 implication_3_2009_2017_2Ex using implication_3_2009_2017_2Ex.xls, nolabel replace


/* Implication 6 */
/* ***************************************************************************** */
/* IPO_US_1998_2017_2Exchange */
clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil nms ta li tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_6_1998_2017_2Ex */

outreg2 implication_6_1998_2017_2Ex using implication_6_1998_2017_2Ex.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2017_NMS */
clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress lncov mv dil ta li tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_6_1998_2017_NMS */

outreg2 implication_6_1998_2017_NMS using implication_6_1998_2017_NMS.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2017_NYSE */
clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov mv dil ta li tech roa,robust*/
regress lncov mv dil ta li tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_1998_2017_NYSE */

outreg2 implication_6_1998_2017_NYSE using implication_6_1998_2017_NYSE.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2008_2Exchange */
clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov mv dil nms tech age roa ,robust*/
regress lncov mv dil nms ta li tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_1998_2008_2Ex */

outreg2 implication_6_1998_2008_2Ex using implication_6_1998_2008_2Ex.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_2009_2017_2Exchange */
clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/*  MODEL 6 Hypothesis: dil is konstant, mv lncov positive */
regress lncov mv dil

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov mv dil nms tech age roa ,robust*/
regress lncov mv dil nms ta li tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_2009_2017_2Ex */

outreg2 implication_6_2009_2017_2Ex using implication_6_2009_2017_2Ex.xls, nolabel replace


/* Implication 7 */ 
/* ***************************************************************************** */
/* IPO_US_1998_2017_2Exchange */
clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress dil lncov mv nms ta tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_7_1998_2017_2Ex */

outreg2 implication_7_1998_2017_2Ex using implication_7_1998_2017_2Ex.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2017_NMS */
clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil mv ta age ,robust */
regress dil lncov mv ta tech age roa ,robust 

/* Multicollinearity Test */
estat vif

/* est store implication_7_1998_2017_NMS */

outreg2 implication_7_1998_2017_NMS using implication_7_1998_2017_NMS.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2017_NYSE */
clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil mv ta li tech roa ,robust*/
regress dil lncov mv ta tech age roa ,robust 

/* Multicollinearity Test */
estat vif

/* est store implication_7_1998_2017_NYSE */

outreg2 implication_7_1998_2017_NYSE using implication_7_1998_2017_NYSE.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2008_2Exchange */
clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress lncov dil mv ta age ,robust */
regress dil lncov mv nms ta tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_7_1998_2008_2Ex */

outreg2 implication_7_1998_2008_2Ex using implication_7_1998_2008_2Ex.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_2009_2017_2Exchange */
clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/*  MODEL 7 Hypothesis: mv ist konstant, lncov dil negativ  */
regress lncov dil mv

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/* regress lncov dil mv ta tech tor,robust */
regress dil lncov mv nms ta tech age roa ,robust

/* Multicollinearity Test */
estat vif

/* est store implication_7_2009_2017_2Ex */

outreg2 implication_7_2009_2017_2Ex using implication_7_2009_2017_2Ex.xls, nolabel replace


/* Implication 8 */
/* ***************************************************************************** */
/* IPO_US_1998_2017_2Exchange */
clear
import delimited using "IPO_US_1998_2017_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress mv up lncov 

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up lncov nms ta li tech lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_1998_2017_2Ex */

outreg2 implication_8_1998_2017_2Ex using implication_8_1998_2017_2Ex.xls, nolabel replace




/* ***************************************************************************** */
/* IPO_US_1998_2017_NMS */
clear
import delimited using "IPO_US_1998_2017_NMS_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress mv up lncov

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up lncov ta li tech lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_1998_2017_NMS */

outreg2 implication_8_1998_2017_NMS using implication_8_1998_2017_NMS.xls, nolabel replace




/* ***************************************************************************** */
/* IPO_US_1998_2017_NYSE */
clear
import delimited using "IPO_US_1998_2017_NYSE_STATA.csv", delimiter(",")

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress mv up lncov

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up lncov ta li tech lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_1998_2017_NYSE */

outreg2 implication_8_1998_2017_NYSE using implication_8_1998_2017_NYSE.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_1998_2008_2Exchange */
clear
import delimited using "IPO_US_1998_2008_2EXCHANGE_STATA.csv", delimiter(",")
drop ïisin

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress mv up lncov

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
regress mv up lncov nms ta li tech lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_1998_2008_2Ex */

outreg2 implication_8_1998_2008_2Ex using implication_8_1998_2008_2Ex.xls, nolabel replace


/* ***************************************************************************** */
/* IPO_US_2009_2017_2Exchange */
clear
import delimited using "IPO_US_2009_2017_2EXCHANGE_STATA.csv", delimiter(",")  
drop ïisin

/*  MODEL 8 Hypothesis: lncov is konstant, up mv positiv */
regress mv up lncov

/* Heteroscedasticity Test */
whitetst
hettest

/* Heteroskedasticity-Robust+Standard+Error */
/*regress mv up lncov nms li,robust*/
regress mv up lncov nms ta li tech lev tor,robust

/* Multicollinearity Test */
estat vif

/* est store implication_8_2009_2017_2Ex */

outreg2 implication_8_2009_2017_2Ex using implication_8_2009_2017_2Ex.xls, nolabel replace



















