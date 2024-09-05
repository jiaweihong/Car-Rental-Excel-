
/* OBJECTIVE FUNCTION -------------------------------------------------------------------- */

max: total_rental_profit_return_same_depot + total_rental_profit_return_diff_depot - total_transfer_cost_damaged - total_transfer_cost_undamaged - opportunity_cost - expansion_cost;

/* INTERMEDIATE VARIABLES -------------------------------------------------------------------- */

/* Number of rented cars returned undamaged to depot i, beginning of day, rented 1 day (cru_1d_i_t) */

cru_1d_glas_mon = 0.297tr_glas_sat + 0.07425tr_manc_sat + 0.07425tr_bir_sat + 0.0396tr_ply_sat;
cru_1d_glas_tues = 0.297tr_glas_mon + 0.07425tr_manc_mon + 0.07425tr_bir_mon + 0.0396tr_ply_mon;
cru_1d_glas_wed = 0.297tr_glas_tues + 0.07425tr_manc_tues + 0.07425tr_bir_tues + 0.0396tr_ply_tues;
cru_1d_glas_thur = 0.297tr_glas_wed + 0.07425tr_manc_wed + 0.07425tr_bir_wed + 0.0396tr_ply_wed;
cru_1d_glas_fri = 0.297tr_glas_thur + 0.07425tr_manc_thur + 0.07425tr_bir_thur + 0.0396tr_ply_thur;
cru_1d_glas_sat = 0.297tr_glas_fri + 0.07425tr_manc_fri + 0.07425tr_bir_fri + 0.0396tr_ply_fri;

cru_1d_manc_mon = 0.099tr_glas_sat + 0.27225tr_manc_sat + 0.099tr_bir_sat + 0.0594tr_ply_sat;
cru_1d_manc_tues = 0.099tr_glas_mon + 0.27225tr_manc_mon + 0.099tr_bir_mon + 0.0594tr_ply_mon;
cru_1d_manc_wed = 0.099tr_glas_tues + 0.27225tr_manc_tues + 0.099tr_bir_tues + 0.0594tr_ply_tues;
cru_1d_manc_thur = 0.099tr_glas_wed + 0.27225tr_manc_wed + 0.099tr_bir_wed + 0.0594tr_ply_wed;
cru_1d_manc_fri = 0.099tr_glas_thur + 0.27225tr_manc_thur + 0.099tr_bir_thur + 0.0594tr_ply_thur;
cru_1d_manc_sat = 0.099tr_glas_fri + 0.27225tr_manc_fri + 0.099tr_bir_fri + 0.0594tr_ply_fri;

cru_1d_bir_mon = 0.0495tr_glas_sat + 0.12375tr_manc_sat + 0.2673tr_bir_sat + 0.13365tr_ply_sat;
cru_1d_bir_tues = 0.0495tr_glas_mon + 0.12375tr_manc_mon + 0.2673tr_bir_mon + 0.13365tr_ply_mon;
cru_1d_bir_wed = 0.0495tr_glas_tues + 0.12375tr_manc_tues + 0.2673tr_bir_tues + 0.13365tr_ply_tues;
cru_1d_bir_thur = 0.0495tr_glas_wed + 0.12375tr_manc_wed + 0.2673tr_bir_wed + 0.13365tr_ply_wed;
cru_1d_bir_fri = 0.0495tr_glas_thur + 0.12375tr_manc_thur + 0.2673tr_bir_thur + 0.13365tr_ply_thur;
cru_1d_bir_sat = 0.0495tr_glas_fri + 0.12375tr_manc_fri + 0.2673tr_bir_fri + 0.13365tr_ply_fri;

cru_1d_ply_mon = 0.0495tr_glas_sat + 0.02475tr_manc_sat + 0.05445tr_bir_sat + 0.26235tr_ply_sat;
cru_1d_ply_tues = 0.0495tr_glas_mon + 0.02475tr_manc_mon + 0.05445tr_bir_mon + 0.26235tr_ply_mon;
cru_1d_ply_wed = 0.0495tr_glas_tues + 0.02475tr_manc_tues + 0.05445tr_bir_tues + 0.26235tr_ply_tues;
cru_1d_ply_thur = 0.0495tr_glas_wed + 0.02475tr_manc_wed + 0.05445tr_bir_wed + 0.26235tr_ply_wed;
cru_1d_ply_fri = 0.0495tr_glas_thur + 0.02475tr_manc_thur + 0.05445tr_bir_thur + 0.26235tr_ply_thur;
cru_1d_ply_sat = 0.0495tr_glas_fri + 0.02475tr_manc_fri + 0.05445tr_bir_fri + 0.26235tr_ply_fri;

/* Number of rented cars returned undamaged to depot i, beginning of day, rented 2 day (cru_2d_i_t) */

cru_2d_glas_mon = 0.108tr_glas_fri + 0.027tr_manc_fri + 0.027tr_bir_fri + 0.0144tr_ply_fri;
cru_2d_glas_tues = 0.108tr_glas_sat + 0.027tr_manc_sat + 0.027tr_bir_sat + 0.0144tr_ply_sat;
cru_2d_glas_wed = 0.108tr_glas_mon + 0.027tr_manc_mon + 0.027tr_bir_mon + 0.0144tr_ply_mon;
cru_2d_glas_thur = 0.108tr_glas_tues + 0.027tr_manc_tues + 0.027tr_bir_tues + 0.0144tr_ply_tues;
cru_2d_glas_fri = 0.108tr_glas_wed + 0.027tr_manc_wed + 0.027tr_bir_wed + 0.0144tr_ply_wed;
cru_2d_glas_sat = 0.108tr_glas_thur + 0.027tr_manc_thur + 0.027tr_bir_thur + 0.0144tr_ply_thur;

cru_2d_manc_mon = 0.036tr_glas_fri + 0.099tr_manc_fri + 0.036tr_bir_fri + 0.0216tr_ply_fri;
cru_2d_manc_tues = 0.036tr_glas_sat + 0.099tr_manc_sat + 0.036tr_bir_sat + 0.0216tr_ply_sat;
cru_2d_manc_wed = 0.036tr_glas_mon + 0.099tr_manc_mon + 0.036tr_bir_mon + 0.0216tr_ply_mon;
cru_2d_manc_thur = 0.036tr_glas_tues + 0.099tr_manc_tues + 0.036tr_bir_tues + 0.0216tr_ply_tues;
cru_2d_manc_fri = 0.036tr_glas_wed + 0.099tr_manc_wed + 0.036tr_bir_wed + 0.0216tr_ply_wed;
cru_2d_manc_sat = 0.036tr_glas_thur + 0.099tr_manc_thur + 0.036tr_bir_thur + 0.0216tr_ply_thur;

cru_2d_bir_mon = 0.018tr_glas_fri + 0.045tr_manc_fri + 0.0972tr_bir_fri + 0.0486tr_ply_fri;
cru_2d_bir_tues = 0.018tr_glas_sat + 0.045tr_manc_sat + 0.0972tr_bir_sat + 0.0486tr_ply_sat;
cru_2d_bir_wed = 0.018tr_glas_mon + 0.045tr_manc_mon + 0.0972tr_bir_mon + 0.0486tr_ply_mon;
cru_2d_bir_thur = 0.018tr_glas_tues + 0.045tr_manc_tues + 0.0972tr_bir_tues + 0.0486tr_ply_tues;
cru_2d_bir_fri = 0.018tr_glas_wed + 0.045tr_manc_wed + 0.0972tr_bir_wed + 0.0486tr_ply_wed;
cru_2d_bir_sat = 0.018tr_glas_thur + 0.045tr_manc_thur + 0.0972tr_bir_thur + 0.0486tr_ply_thur;

cru_2d_ply_mon = 0.018tr_glas_fri + 0.009tr_manc_fri + 0.0198tr_bir_fri + 0.0954tr_ply_fri;
cru_2d_ply_tues = 0.018tr_glas_sat + 0.009tr_manc_sat + 0.0198tr_bir_sat + 0.0954tr_ply_sat;
cru_2d_ply_wed = 0.018tr_glas_mon + 0.009tr_manc_mon + 0.0198tr_bir_mon + 0.0954tr_ply_mon;
cru_2d_ply_thur = 0.018tr_glas_tues + 0.009tr_manc_tues + 0.0198tr_bir_tues + 0.0954tr_ply_tues;
cru_2d_ply_fri = 0.018tr_glas_wed + 0.009tr_manc_wed + 0.0198tr_bir_wed + 0.0954tr_ply_wed;
cru_2d_ply_sat = 0.018tr_glas_thur + 0.009tr_manc_thur + 0.0198tr_bir_thur + 0.0954tr_ply_thur;

/* Number of rented cars returned undamaged to depot i, beginning of day, rented 3 day (cru_3d_i_t) */

cru_3d_glas_mon = 0.135tr_glas_thur + 0.03375tr_manc_thur + 0.03375tr_bir_thur + 0.018tr_ply_thur;
cru_3d_glas_tues = 0.135tr_glas_fri + 0.03375tr_manc_fri + 0.03375tr_bir_fri + 0.018tr_ply_fri;
cru_3d_glas_wed = 0.135tr_glas_sat + 0.03375tr_manc_sat + 0.03375tr_bir_sat + 0.018tr_ply_sat;
cru_3d_glas_thur = 0.135tr_glas_mon + 0.03375tr_manc_mon + 0.03375tr_bir_mon + 0.018tr_ply_mon;
cru_3d_glas_fri = 0.135tr_glas_tues + 0.03375tr_manc_tues + 0.03375tr_bir_tues + 0.018tr_ply_tues;
cru_3d_glas_sat = 0.135tr_glas_wed + 0.03375tr_manc_wed + 0.03375tr_bir_wed + 0.018tr_ply_wed;

cru_3d_manc_mon = 0.045tr_glas_thur + 0.12375tr_manc_thur + 0.045tr_bir_thur + 0.027tr_ply_thur;
cru_3d_manc_tues = 0.045tr_glas_fri + 0.12375tr_manc_fri + 0.045tr_bir_fri + 0.027tr_ply_fri;
cru_3d_manc_wed = 0.045tr_glas_sat + 0.12375tr_manc_sat + 0.045tr_bir_sat + 0.027tr_ply_sat;
cru_3d_manc_thur = 0.045tr_glas_mon + 0.12375tr_manc_mon + 0.045tr_bir_mon + 0.027tr_ply_mon;
cru_3d_manc_fri = 0.045tr_glas_tues + 0.12375tr_manc_tues + 0.045tr_bir_tues + 0.027tr_ply_tues;
cru_3d_manc_sat = 0.045tr_glas_wed + 0.12375tr_manc_wed + 0.045tr_bir_wed + 0.027tr_ply_wed;

cru_3d_bir_mon = 0.0225tr_glas_thur + 0.05625tr_manc_thur + 0.1215tr_bir_thur + 0.06075tr_ply_thur;
cru_3d_bir_tues = 0.0225tr_glas_fri + 0.05625tr_manc_fri + 0.1215tr_bir_fri + 0.06075tr_ply_fri;
cru_3d_bir_wed = 0.0225tr_glas_sat + 0.05625tr_manc_sat + 0.1215tr_bir_sat + 0.06075tr_ply_sat;
cru_3d_bir_thur = 0.0225tr_glas_mon + 0.05625tr_manc_mon + 0.1215tr_bir_mon + 0.06075tr_ply_mon;
cru_3d_bir_fri = 0.0225tr_glas_tues + 0.05625tr_manc_tues + 0.1215tr_bir_tues + 0.06075tr_ply_tues;
cru_3d_bir_sat = 0.0225tr_glas_wed + 0.05625tr_manc_wed + 0.1215tr_bir_wed + 0.06075tr_ply_wed;

cru_3d_ply_mon = 0.0225tr_glas_thur + 0.01125tr_manc_thur + 0.02475tr_bir_thur + 0.11925tr_ply_thur;
cru_3d_ply_tues = 0.0225tr_glas_fri + 0.01125tr_manc_fri + 0.02475tr_bir_fri + 0.11925tr_ply_fri;
cru_3d_ply_wed = 0.0225tr_glas_sat + 0.01125tr_manc_sat + 0.02475tr_bir_sat + 0.11925tr_ply_sat;
cru_3d_ply_thur = 0.0225tr_glas_mon + 0.01125tr_manc_mon + 0.02475tr_bir_mon + 0.11925tr_ply_mon;
cru_3d_ply_fri = 0.0225tr_glas_tues + 0.01125tr_manc_tues + 0.02475tr_bir_tues + 0.11925tr_ply_tues;
cru_3d_ply_sat = 0.0225tr_glas_wed + 0.01125tr_manc_wed + 0.02475tr_bir_wed + 0.11925tr_ply_wed;

/* Total number of rented cars returned to depot i undamaged, beginning of day t (cru_1to3d_i_t) 
SUM[j=glas to ply]SUM[k=1 to 3](0.9*P_ji*Q_k*tr_jt-k) = cru_1to3d_i_t, for all i, t
*/

cru_1to3d_glas_mon = cru_1d_glas_mon + cru_2d_glas_mon + cru_3d_glas_mon;
cru_1to3d_glas_tues = cru_1d_glas_tues + cru_2d_glas_tues + cru_3d_glas_tues;
cru_1to3d_glas_wed = cru_1d_glas_wed + cru_2d_glas_wed + cru_3d_glas_wed;
cru_1to3d_glas_thur = cru_1d_glas_thur + cru_2d_glas_thur + cru_3d_glas_thur;
cru_1to3d_glas_fri = cru_1d_glas_fri + cru_2d_glas_fri + cru_3d_glas_fri;
cru_1to3d_glas_sat = cru_1d_glas_sat + cru_2d_glas_sat + cru_3d_glas_sat;

cru_1to3d_manc_mon = cru_1d_manc_mon + cru_2d_manc_mon + cru_3d_manc_mon;
cru_1to3d_manc_tues = cru_1d_manc_tues + cru_2d_manc_tues + cru_3d_manc_tues;
cru_1to3d_manc_wed = cru_1d_manc_wed + cru_2d_manc_wed + cru_3d_manc_wed;
cru_1to3d_manc_thur = cru_1d_manc_thur + cru_2d_manc_thur + cru_3d_manc_thur;
cru_1to3d_manc_fri = cru_1d_manc_fri + cru_2d_manc_fri + cru_3d_manc_fri;
cru_1to3d_manc_sat = cru_1d_manc_sat + cru_2d_manc_sat + cru_3d_manc_sat;

cru_1to3d_bir_mon = cru_1d_bir_mon + cru_2d_bir_mon + cru_3d_bir_mon;
cru_1to3d_bir_tues = cru_1d_bir_tues + cru_2d_bir_tues + cru_3d_bir_tues;
cru_1to3d_bir_wed = cru_1d_bir_wed + cru_2d_bir_wed + cru_3d_bir_wed;
cru_1to3d_bir_thur = cru_1d_bir_thur + cru_2d_bir_thur + cru_3d_bir_thur;
cru_1to3d_bir_fri = cru_1d_bir_fri + cru_2d_bir_fri + cru_3d_bir_fri;
cru_1to3d_bir_sat = cru_1d_bir_sat + cru_2d_bir_sat + cru_3d_bir_sat;

cru_1to3d_ply_mon = cru_1d_ply_mon + cru_2d_ply_mon + cru_3d_ply_mon;
cru_1to3d_ply_tues = cru_1d_ply_tues + cru_2d_ply_tues + cru_3d_ply_tues;
cru_1to3d_ply_wed = cru_1d_ply_wed + cru_2d_ply_wed + cru_3d_ply_wed;
cru_1to3d_ply_thur = cru_1d_ply_thur + cru_2d_ply_thur + cru_3d_ply_thur;
cru_1to3d_ply_fri = cru_1d_ply_fri + cru_2d_ply_fri + cru_3d_ply_fri;
cru_1to3d_ply_sat = cru_1d_ply_sat + cru_2d_ply_sat + cru_3d_ply_sat;

/* Total number of undamaged cars from every other depot j to be transferred to depot i, beginning of day (tu_otherj_i_t) 
SUM[j=glas to ply]tu_jit-1 = tu_otherj_i_t for all i, t
*/

tu_otherj_glas_mon = tu_manc_glas_mon + tu_bir_glas_mon + tu_ply_glas_mon;
tu_otherj_glas_tues = tu_manc_glas_tues + tu_bir_glas_tues + tu_ply_glas_tues;
tu_otherj_glas_wed = tu_manc_glas_wed + tu_bir_glas_wed + tu_ply_glas_wed;
tu_otherj_glas_thur = tu_manc_glas_thur + tu_bir_glas_thur + tu_ply_glas_thur;
tu_otherj_glas_fri = tu_manc_glas_fri + tu_bir_glas_fri + tu_ply_glas_fri;
tu_otherj_glas_sat = tu_manc_glas_sat + tu_bir_glas_sat + tu_ply_glas_sat;

tu_otherj_manc_mon = tu_glas_manc_mon + tu_bir_manc_mon + tu_ply_manc_mon;
tu_otherj_manc_tues = tu_glas_manc_tues + tu_bir_manc_tues + tu_ply_manc_tues;
tu_otherj_manc_wed = tu_glas_manc_wed + tu_bir_manc_wed + tu_ply_manc_wed;
tu_otherj_manc_thur = tu_glas_manc_thur + tu_bir_manc_thur + tu_ply_manc_thur;
tu_otherj_manc_fri  = tu_glas_manc_fri + tu_bir_manc_fri + tu_ply_manc_fri;
tu_otherj_manc_sat = tu_glas_manc_sat + tu_bir_manc_sat + tu_ply_manc_sat;

tu_otherj_bir_mon = tu_glas_bir_mon + tu_manc_bir_mon + tu_ply_bir_mon;
tu_otherj_bir_tues = tu_glas_bir_tues + tu_manc_bir_tues + tu_ply_bir_tues;
tu_otherj_bir_wed = tu_glas_bir_wed + tu_manc_bir_wed + tu_ply_bir_wed;
tu_otherj_bir_thur = tu_glas_bir_thur + tu_manc_bir_thur + tu_ply_bir_thur;
tu_otherj_bir_fri = tu_glas_bir_fri + tu_manc_bir_fri + tu_ply_bir_fri;
tu_otherj_bir_sat = tu_glas_bir_sat + tu_manc_bir_sat + tu_ply_bir_sat;

tu_otherj_ply_mon = tu_glas_ply_mon + tu_manc_ply_mon + tu_bir_ply_mon;
tu_otherj_ply_tues = tu_glas_ply_tues + tu_manc_ply_tues + tu_bir_ply_tues;
tu_otherj_ply_wed = tu_glas_ply_wed + tu_manc_ply_wed + tu_bir_ply_wed;
tu_otherj_ply_thur = tu_glas_ply_thur + tu_manc_ply_thur + tu_bir_ply_thur;
tu_otherj_ply_fri = tu_glas_ply_fri + tu_manc_ply_fri + tu_bir_ply_fri;
tu_otherj_ply_sat = tu_glas_ply_sat + tu_manc_ply_sat + tu_bir_ply_sat;

/* Total number of undamaged cars from depot i to be transferred out to every other depot j, beginning of day (tu_i_otherj_t) 
SUM[j=glas to ply]tu_ijt-1 = tu_i_otherj_t for all i, t
*/

tu_glas_otherj_mon = tu_glas_manc_mon + tu_glas_bir_mon + tu_glas_ply_mon;
tu_glas_otherj_tues = tu_glas_manc_tues + tu_glas_bir_tues + tu_glas_ply_tues;
tu_glas_otherj_wed = tu_glas_manc_wed + tu_glas_bir_wed + tu_glas_ply_wed;
tu_glas_otherj_thur = tu_glas_manc_thur + tu_glas_bir_thur + tu_glas_ply_thur;
tu_glas_otherj_fri = tu_glas_manc_fri + tu_glas_bir_fri + tu_glas_ply_fri;
tu_glas_otherj_sat = tu_glas_manc_sat + tu_glas_bir_sat + tu_glas_ply_sat;

tu_manc_otherj_mon = tu_manc_glas_mon + tu_manc_bir_mon + tu_manc_ply_mon;
tu_manc_otherj_tues = tu_manc_glas_tues + tu_manc_bir_tues + tu_manc_ply_tues;
tu_manc_otherj_wed = tu_manc_glas_wed + tu_manc_bir_wed + tu_manc_ply_wed;
tu_manc_otherj_thur = tu_manc_glas_thur + tu_manc_bir_thur + tu_manc_ply_thur;
tu_manc_otherj_fri = tu_manc_glas_fri + tu_manc_bir_fri + tu_manc_ply_fri;
tu_manc_otherj_sat = tu_manc_glas_sat + tu_manc_bir_sat + tu_manc_ply_sat;

tu_bir_otherj_mon = tu_bir_glas_mon + tu_bir_manc_mon + tu_bir_ply_mon;
tu_bir_otherj_tues = tu_bir_glas_tues + tu_bir_manc_tues + tu_bir_ply_tues;
tu_bir_otherj_wed = tu_bir_glas_wed + tu_bir_manc_wed + tu_bir_ply_wed;
tu_bir_otherj_thur = tu_bir_glas_thur + tu_bir_manc_thur + tu_bir_ply_thur;
tu_bir_otherj_fri = tu_bir_glas_fri + tu_bir_manc_fri + tu_bir_ply_fri;
tu_bir_otherj_sat = tu_bir_glas_sat + tu_bir_manc_sat + tu_bir_ply_sat;

tu_ply_otherj_mon = tu_ply_glas_mon + tu_ply_manc_mon + tu_ply_bir_mon;
tu_ply_otherj_tues = tu_ply_glas_tues + tu_ply_manc_tues + tu_ply_bir_tues;
tu_ply_otherj_wed = tu_ply_glas_wed + tu_ply_manc_wed + tu_ply_bir_wed;
tu_ply_otherj_thur = tu_ply_glas_thur + tu_ply_manc_thur + tu_ply_bir_thur;
tu_ply_otherj_fri = tu_ply_glas_fri + tu_ply_manc_fri + tu_ply_bir_fri;
tu_ply_otherj_sat = tu_ply_glas_sat + tu_ply_manc_sat + tu_ply_bir_sat;

/* Number of undamaged cars going into depot i, beginning of day t (nu_in_i_t) 
SUM[j=glas to ply]SUM[k=1 to 3](0.9*P_ji*Q_k*tr_jt-k) + SUM[j=glas to ply](tu_jit-1) + rp_it-1 + eu_it-1 = nu_in_i_t for all i, t
*/

nu_in_glas_mon = cru_1to3d_glas_mon + tu_otherj_glas_sat + eu_glas_sat;
nu_in_glas_tues = cru_1to3d_glas_tues + tu_otherj_glas_mon + eu_glas_mon;
nu_in_glas_wed = cru_1to3d_glas_wed + tu_otherj_glas_tues + eu_glas_tues;
nu_in_glas_thur = cru_1to3d_glas_thur + tu_otherj_glas_wed + eu_glas_wed;
nu_in_glas_fri = cru_1to3d_glas_fri + tu_otherj_glas_thur + eu_glas_thur;
nu_in_glas_sat = cru_1to3d_glas_sat + tu_otherj_glas_fri + eu_glas_fri;

nu_in_manc_mon = cru_1to3d_manc_mon + tu_otherj_manc_sat + rp_manc_sat + eu_manc_sat;
nu_in_manc_tues = cru_1to3d_manc_tues + tu_otherj_manc_mon + rp_manc_mon + eu_manc_mon;
nu_in_manc_wed = cru_1to3d_manc_wed + tu_otherj_manc_tues + rp_manc_tues + eu_manc_tues;
nu_in_manc_thur = cru_1to3d_manc_thur + tu_otherj_manc_wed + rp_manc_wed + eu_manc_wed;
nu_in_manc_fri = cru_1to3d_manc_fri + tu_otherj_manc_thur + rp_manc_thur + eu_manc_thur;
nu_in_manc_sat = cru_1to3d_manc_sat + tu_otherj_manc_fri + rp_manc_fri + eu_manc_fri;

nu_in_bir_mon = cru_1to3d_bir_mon + tu_otherj_bir_sat + rp_bir_sat + eu_bir_sat;
nu_in_bir_tues = cru_1to3d_bir_tues + tu_otherj_bir_mon + rp_bir_mon + eu_bir_mon;
nu_in_bir_wed = cru_1to3d_bir_wed + tu_otherj_bir_tues + rp_bir_tues + eu_bir_tues;
nu_in_bir_thur = cru_1to3d_bir_thur + tu_otherj_bir_wed + rp_bir_wed + eu_bir_wed;
nu_in_bir_fri = cru_1to3d_bir_fri + tu_otherj_bir_thur + rp_bir_thur + eu_bir_thur;
nu_in_bir_sat = cru_1to3d_bir_sat + tu_otherj_bir_fri + rp_bir_fri + eu_bir_fri;

nu_in_ply_mon = cru_1to3d_ply_mon + tu_otherj_ply_sat + rp_ply_sat + eu_ply_sat;
nu_in_ply_tues = cru_1to3d_ply_tues + tu_otherj_ply_mon + rp_ply_mon + eu_ply_mon;
nu_in_ply_wed = cru_1to3d_ply_wed + tu_otherj_ply_tues + rp_ply_tues + eu_ply_tues;
nu_in_ply_thur = cru_1to3d_ply_thur + tu_otherj_ply_wed + rp_ply_wed + eu_ply_wed;
nu_in_ply_fri = cru_1to3d_ply_fri + tu_otherj_ply_thur + rp_ply_thur + eu_ply_thur;
nu_in_ply_sat = cru_1to3d_ply_sat + tu_otherj_ply_fri + rp_ply_fri + eu_ply_fri;

/* Number of undamaged cars out of depot i, beginning of day (nu_out_i_t) 
tr_it + SUM[j=glas to ply](tu_ijt-1) + eu_it = nu_out_i_t, for all i t
*/

nu_out_glas_mon = tr_glas_mon + tu_glas_otherj_mon + eu_glas_mon; 
nu_out_glas_tues = tr_glas_tues + tu_glas_otherj_tues + eu_glas_tues;
nu_out_glas_wed = tr_glas_wed + tu_glas_otherj_wed + eu_glas_wed;
nu_out_glas_thur = tr_glas_thur + tu_glas_otherj_thur + eu_glas_thur;
nu_out_glas_fri= tr_glas_fri + tu_glas_otherj_fri + eu_glas_fri;
nu_out_glas_sat= tr_glas_sat + tu_glas_otherj_sat + eu_glas_sat;

nu_out_manc_mon = tr_manc_mon + tu_manc_otherj_mon + eu_manc_mon;
nu_out_manc_tues = tr_manc_tues + tu_manc_otherj_tues + eu_manc_tues;
nu_out_manc_wed = tr_manc_wed + tu_manc_otherj_wed + eu_manc_wed;
nu_out_manc_thur = tr_manc_thur + tu_manc_otherj_thur + eu_manc_thur;
nu_out_manc_fri = tr_manc_fri + tu_manc_otherj_fri + eu_manc_fri;
nu_out_manc_sat = tr_manc_sat + tu_manc_otherj_sat + eu_manc_sat;

nu_out_bir_mon = tr_bir_mon + tu_bir_otherj_mon + eu_bir_mon;
nu_out_bir_tues = tr_bir_tues + tu_bir_otherj_tues + eu_bir_tues;
nu_out_bir_wed = tr_bir_wed + tu_bir_otherj_wed + eu_bir_wed;
nu_out_bir_thur = tr_bir_thur + tu_bir_otherj_thur + eu_bir_thur;
nu_out_bir_fri = tr_bir_fri + tu_bir_otherj_fri + eu_bir_fri;
nu_out_bir_sat = tr_bir_sat + tu_bir_otherj_sat + eu_bir_sat;

nu_out_ply_mon = tr_ply_mon + tu_ply_otherj_mon + eu_ply_mon;
nu_out_ply_tues = tr_ply_tues + tu_ply_otherj_tues + eu_ply_tues;
nu_out_ply_wed = tr_ply_wed + tu_ply_otherj_wed + eu_ply_wed;
nu_out_ply_thur = tr_ply_thur + tu_ply_otherj_thur + eu_ply_thur;
nu_out_ply_fri = tr_ply_fri + tu_ply_otherj_fri + eu_ply_fri;
nu_out_ply_sat = tr_ply_sat + tu_ply_otherj_sat + eu_ply_sat;

/* Number of rented cars returned damaged to depot i, beginning of day, rented 1 day (crd_1d_i_t) */

crd_1d_glas_mon = 0.033tr_glas_sat + 0.00825tr_manc_sat + 0.00825tr_bir_sat + 0.0044tr_ply_sat;
crd_1d_glas_tues = 0.033tr_glas_mon + 0.00825tr_manc_mon + 0.00825tr_bir_mon + 0.0044tr_ply_mon;
crd_1d_glas_wed = 0.033tr_glas_tues + 0.00825tr_manc_tues + 0.00825tr_bir_tues + 0.0044tr_ply_tues;
crd_1d_glas_thur = 0.033tr_glas_wed + 0.00825tr_manc_wed + 0.00825tr_bir_wed + 0.0044tr_ply_wed;
crd_1d_glas_fri = 0.033tr_glas_thur + 0.00825tr_manc_thur + 0.00825tr_bir_thur + 0.0044tr_ply_thur;
crd_1d_glas_sat = 0.033tr_glas_fri + 0.00825tr_manc_fri + 0.00825tr_bir_fri + 0.0044tr_ply_fri;

crd_1d_manc_mon = 0.011tr_glas_sat + 0.03025tr_manc_sat + 0.011tr_bir_sat + 0.0066tr_ply_sat;
crd_1d_manc_tues = 0.011tr_glas_mon + 0.03025tr_manc_mon + 0.011tr_bir_mon + 0.0066tr_ply_mon;
crd_1d_manc_wed = 0.011tr_glas_tues + 0.03025tr_manc_tues + 0.011tr_bir_tues + 0.0066tr_ply_tues;
crd_1d_manc_thur = 0.011tr_glas_wed + 0.03025tr_manc_wed + 0.011tr_bir_wed + 0.0066tr_ply_wed;
crd_1d_manc_fri = 0.011tr_glas_thur + 0.03025tr_manc_thur + 0.011tr_bir_thur + 0.0066tr_ply_thur;
crd_1d_manc_sat = 0.011tr_glas_fri + 0.03025tr_manc_fri + 0.011tr_bir_fri + 0.0066tr_ply_fri;

crd_1d_bir_mon = 0.0055tr_glas_sat + 0.01375tr_manc_sat + 0.0297tr_bir_sat + 0.01485tr_ply_sat;
crd_1d_bir_tues = 0.0055tr_glas_mon + 0.01375tr_manc_mon + 0.0297tr_bir_mon + 0.01485tr_ply_mon;
crd_1d_bir_wed = 0.0055tr_glas_tues + 0.01375tr_manc_tues + 0.0297tr_bir_tues + 0.01485tr_ply_tues;
crd_1d_bir_thur = 0.0055tr_glas_wed + 0.01375tr_manc_wed + 0.0297tr_bir_wed + 0.01485tr_ply_wed;
crd_1d_bir_fri = 0.0055tr_glas_thur + 0.01375tr_manc_thur + 0.0297tr_bir_thur + 0.01485tr_ply_thur;
crd_1d_bir_sat = 0.0055tr_glas_fri + 0.01375tr_manc_fri + 0.0297tr_bir_fri + 0.01485tr_ply_fri;

crd_1d_ply_mon = 0.0055tr_glas_sat + 0.00275tr_manc_sat + 0.00605tr_bir_sat + 0.02915tr_ply_sat;
crd_1d_ply_tues = 0.0055tr_glas_mon + 0.00275tr_manc_mon + 0.00605tr_bir_mon + 0.02915tr_ply_mon;
crd_1d_ply_wed = 0.0055tr_glas_tues + 0.00275tr_manc_tues + 0.00605tr_bir_tues + 0.02915tr_ply_tues;
crd_1d_ply_thur = 0.0055tr_glas_wed + 0.00275tr_manc_wed + 0.00605tr_bir_wed + 0.02915tr_ply_wed;
crd_1d_ply_fri = 0.0055tr_glas_thur + 0.00275tr_manc_thur + 0.00605tr_bir_thur + 0.02915tr_ply_thur;
crd_1d_ply_sat = 0.0055tr_glas_fri + 0.00275tr_manc_fri + 0.00605tr_bir_fri + 0.02915tr_ply_fri;

/* Number of rented cars returned damaged to depot i, beginning of day, rented 2 day (crd_2d_i_t) */

crd_2d_glas_mon = 0.012tr_glas_fri + 0.003tr_manc_fri + 0.003tr_bir_fri + 0.0016tr_ply_fri;
crd_2d_glas_tues = 0.012tr_glas_sat + 0.003tr_manc_sat + 0.003tr_bir_sat + 0.0016tr_ply_sat;
crd_2d_glas_wed = 0.012tr_glas_mon + 0.003tr_manc_mon + 0.003tr_bir_mon + 0.0016tr_ply_mon;
crd_2d_glas_thur = 0.012tr_glas_tues + 0.003tr_manc_tues + 0.003tr_bir_tues + 0.0016tr_ply_tues;
crd_2d_glas_fri = 0.012tr_glas_wed + 0.003tr_manc_wed + 0.003tr_bir_wed + 0.0016tr_ply_wed;
crd_2d_glas_sat = 0.012tr_glas_thur + 0.003tr_manc_thur + 0.003tr_bir_thur + 0.0016tr_ply_thur;

crd_2d_manc_mon = 0.004tr_glas_fri + 0.011tr_manc_fri + 0.004tr_bir_fri + 0.0024tr_ply_fri;
crd_2d_manc_tues = 0.004tr_glas_sat + 0.011tr_manc_sat + 0.004tr_bir_sat + 0.0024tr_ply_sat;
crd_2d_manc_wed = 0.004tr_glas_mon + 0.011tr_manc_mon + 0.004tr_bir_mon + 0.0024tr_ply_mon;
crd_2d_manc_thur = 0.004tr_glas_tues + 0.011tr_manc_tues + 0.004tr_bir_tues + 0.0024tr_ply_tues;
crd_2d_manc_fri = 0.004tr_glas_wed + 0.011tr_manc_wed + 0.004tr_bir_wed + 0.0024tr_ply_wed;
crd_2d_manc_sat = 0.004tr_glas_thur + 0.011tr_manc_thur + 0.004tr_bir_thur + 0.0024tr_ply_thur;

crd_2d_bir_mon = 0.002tr_glas_fri + 0.005tr_manc_fri + 0.0108tr_bir_fri + 0.0054tr_ply_fri;
crd_2d_bir_tues = 0.002tr_glas_sat + 0.005tr_manc_sat + 0.0108tr_bir_sat + 0.0054tr_ply_sat;
crd_2d_bir_wed = 0.002tr_glas_mon + 0.005tr_manc_mon + 0.0108tr_bir_mon + 0.0054tr_ply_mon;
crd_2d_bir_thur = 0.002tr_glas_tues + 0.005tr_manc_tues + 0.0108tr_bir_tues + 0.0054tr_ply_tues;
crd_2d_bir_fri = 0.002tr_glas_wed + 0.005tr_manc_wed + 0.0108tr_bir_wed + 0.0054tr_ply_wed;
crd_2d_bir_sat = 0.002tr_glas_thur + 0.005tr_manc_thur + 0.0108tr_bir_thur + 0.0054tr_ply_thur;

crd_2d_ply_mon = 0.002tr_glas_fri + 0.001tr_manc_fri + 0.0022tr_bir_fri + 0.0106tr_ply_fri;
crd_2d_ply_tues = 0.002tr_glas_sat + 0.001tr_manc_sat + 0.0022tr_bir_sat + 0.0106tr_ply_sat;
crd_2d_ply_wed = 0.002tr_glas_mon + 0.001tr_manc_mon + 0.0022tr_bir_mon + 0.0106tr_ply_mon;
crd_2d_ply_thur = 0.002tr_glas_tues + 0.001tr_manc_tues + 0.0022tr_bir_tues + 0.0106tr_ply_tues;
crd_2d_ply_fri = 0.002tr_glas_wed + 0.001tr_manc_wed + 0.0022tr_bir_wed + 0.0106tr_ply_wed;
crd_2d_ply_sat = 0.002tr_glas_thur + 0.001tr_manc_thur + 0.0022tr_bir_thur + 0.0106tr_ply_thur;

/* Number of rented cars returned damaged to depot i, beginning of day, rented 3 day (crd_3d_i_t) */

crd_3d_glas_mon = 0.015tr_glas_thur + 0.00375tr_manc_thur + 0.00375tr_bir_thur + 0.002tr_ply_thur;
crd_3d_glas_tues = 0.015tr_glas_fri + 0.00375tr_manc_fri + 0.00375tr_bir_fri + 0.002tr_ply_fri;
crd_3d_glas_wed = 0.015tr_glas_sat + 0.00375tr_manc_sat + 0.00375tr_bir_sat + 0.002tr_ply_sat;
crd_3d_glas_thur = 0.015tr_glas_mon + 0.00375tr_manc_mon + 0.00375tr_bir_mon + 0.002tr_ply_mon;
crd_3d_glas_fri = 0.015tr_glas_tues + 0.00375tr_manc_tues + 0.00375tr_bir_tues + 0.002tr_ply_tues;
crd_3d_glas_sat = 0.015tr_glas_wed + 0.00375tr_manc_wed + 0.00375tr_bir_wed + 0.002tr_ply_wed;

crd_3d_manc_mon = 0.005tr_glas_thur + 0.01375tr_manc_thur + 0.005tr_bir_thur + 0.003tr_ply_thur;
crd_3d_manc_tues = 0.005tr_glas_fri + 0.01375tr_manc_fri + 0.005tr_bir_fri + 0.003tr_ply_fri;
crd_3d_manc_wed = 0.005tr_glas_sat + 0.01375tr_manc_sat + 0.005tr_bir_sat + 0.003tr_ply_sat;
crd_3d_manc_thur = 0.005tr_glas_mon + 0.01375tr_manc_mon + 0.005tr_bir_mon + 0.003tr_ply_mon;
crd_3d_manc_fri = 0.005tr_glas_tues + 0.01375tr_manc_tues + 0.005tr_bir_tues + 0.003tr_ply_tues;
crd_3d_manc_sat = 0.005tr_glas_wed + 0.01375tr_manc_wed + 0.005tr_bir_wed + 0.003tr_ply_wed;

crd_3d_bir_mon = 0.0025tr_glas_thur + 0.00625tr_manc_thur + 0.0135tr_bir_thur + 0.00675tr_ply_thur;
crd_3d_bir_tues = 0.0025tr_glas_fri + 0.00625tr_manc_fri + 0.0135tr_bir_fri + 0.00675tr_ply_fri;
crd_3d_bir_wed = 0.0025tr_glas_sat + 0.00625tr_manc_sat + 0.0135tr_bir_sat + 0.00675tr_ply_sat;
crd_3d_bir_thur = 0.0025tr_glas_mon + 0.00625tr_manc_mon + 0.0135tr_bir_mon + 0.00675tr_ply_mon;
crd_3d_bir_fri = 0.0025tr_glas_tues + 0.00625tr_manc_tues + 0.0135tr_bir_tues + 0.00675tr_ply_tues;
crd_3d_bir_sat = 0.0025tr_glas_wed + 0.00625tr_manc_wed + 0.0135tr_bir_wed + 0.00675tr_ply_wed;

crd_3d_ply_mon = 0.0025tr_glas_thur + 0.00125tr_manc_thur + 0.00275tr_bir_thur + 0.01325tr_ply_thur;
crd_3d_ply_tues = 0.0025tr_glas_fri + 0.00125tr_manc_fri + 0.00275tr_bir_fri + 0.01325tr_ply_fri;
crd_3d_ply_wed = 0.0025tr_glas_sat + 0.00125tr_manc_sat + 0.00275tr_bir_sat + 0.01325tr_ply_sat;
crd_3d_ply_thur = 0.0025tr_glas_mon + 0.00125tr_manc_mon + 0.00275tr_bir_mon + 0.01325tr_ply_mon;
crd_3d_ply_fri = 0.0025tr_glas_tues + 0.00125tr_manc_tues + 0.00275tr_bir_tues + 0.01325tr_ply_tues;
crd_3d_ply_sat = 0.0025tr_glas_wed + 0.00125tr_manc_wed + 0.00275tr_bir_wed + 0.01325tr_ply_wed;

/* Total number of rented cars returned to depot i damaged, beginning of day t (crd_1to3d_i_t) 
SUM[j=glas to ply]SUM[k=1 to 3](0.1*P_ji*Q_k*tr_jt-k) = crd_1to3d_i_t, for all i, t
*/

crd_1to3d_glas_mon = crd_1d_glas_mon + crd_2d_glas_mon + crd_3d_glas_mon;
crd_1to3d_glas_tues = crd_1d_glas_tues + crd_2d_glas_tues + crd_3d_glas_tues;
crd_1to3d_glas_wed = crd_1d_glas_wed + crd_2d_glas_wed + crd_3d_glas_wed;
crd_1to3d_glas_thur = crd_1d_glas_thur + crd_2d_glas_thur + crd_3d_glas_thur;
crd_1to3d_glas_fri = crd_1d_glas_fri + crd_2d_glas_fri + crd_3d_glas_fri;
crd_1to3d_glas_sat = crd_1d_glas_sat + crd_2d_glas_sat + crd_3d_glas_sat;

crd_1to3d_manc_mon = crd_1d_manc_mon + crd_2d_manc_mon + crd_3d_manc_mon;
crd_1to3d_manc_tues = crd_1d_manc_tues + crd_2d_manc_tues + crd_3d_manc_tues;
crd_1to3d_manc_wed = crd_1d_manc_wed + crd_2d_manc_wed + crd_3d_manc_wed;
crd_1to3d_manc_thur = crd_1d_manc_thur + crd_2d_manc_thur + crd_3d_manc_thur;
crd_1to3d_manc_fri = crd_1d_manc_fri + crd_2d_manc_fri + crd_3d_manc_fri;
crd_1to3d_manc_sat = crd_1d_manc_sat + crd_2d_manc_sat + crd_3d_manc_sat;

crd_1to3d_bir_mon = crd_1d_bir_mon + crd_2d_bir_mon + crd_3d_bir_mon;
crd_1to3d_bir_tues = crd_1d_bir_tues + crd_2d_bir_tues + crd_3d_bir_tues;
crd_1to3d_bir_wed = crd_1d_bir_wed + crd_2d_bir_wed + crd_3d_bir_wed;
crd_1to3d_bir_thur = crd_1d_bir_thur + crd_2d_bir_thur + crd_3d_bir_thur;
crd_1to3d_bir_fri = crd_1d_bir_fri + crd_2d_bir_fri + crd_3d_bir_fri;
crd_1to3d_bir_sat = crd_1d_bir_sat + crd_2d_bir_sat + crd_3d_bir_sat;

crd_1to3d_ply_mon = crd_1d_ply_mon + crd_2d_ply_mon + crd_3d_ply_mon;
crd_1to3d_ply_tues = crd_1d_ply_tues + crd_2d_ply_tues + crd_3d_ply_tues;
crd_1to3d_ply_wed = crd_1d_ply_wed + crd_2d_ply_wed + crd_3d_ply_wed;
crd_1to3d_ply_thur = crd_1d_ply_thur + crd_2d_ply_thur + crd_3d_ply_thur;
crd_1to3d_ply_fri = crd_1d_ply_fri + crd_2d_ply_fri + crd_3d_ply_fri;
crd_1to3d_ply_sat = crd_1d_ply_sat + crd_2d_ply_sat + crd_3d_ply_sat;

/* Total number of damaged cars from every other depot j to be transferred to depot i, beginning of day (td_otherj_i_t) 
SUM[j=glas to ply]td_jit-1 = tu_otherj_i_t for all i, t
*/

td_otherj_glas_mon = td_manc_glas_mon + td_bir_glas_mon + td_ply_glas_mon;
td_otherj_glas_tues = td_manc_glas_tues + td_bir_glas_tues + td_ply_glas_tues;
td_otherj_glas_wed = td_manc_glas_wed + td_bir_glas_wed + td_ply_glas_wed;
td_otherj_glas_thur = td_manc_glas_thur + td_bir_glas_thur + td_ply_glas_thur;
td_otherj_glas_fri = td_manc_glas_fri + td_bir_glas_fri + td_ply_glas_fri;
td_otherj_glas_sat = td_manc_glas_sat + td_bir_glas_sat + td_ply_glas_sat;

td_otherj_manc_mon = td_glas_manc_mon + td_bir_manc_mon + td_ply_manc_mon;
td_otherj_manc_tues = td_glas_manc_tues + td_bir_manc_tues + td_ply_manc_tues;
td_otherj_manc_wed = td_glas_manc_wed + td_bir_manc_wed + td_ply_manc_wed;
td_otherj_manc_thur = td_glas_manc_thur + td_bir_manc_thur + td_ply_manc_thur;
td_otherj_manc_fri  = td_glas_manc_fri + td_bir_manc_fri + td_ply_manc_fri;
td_otherj_manc_sat = td_glas_manc_sat + td_bir_manc_sat + td_ply_manc_sat;

td_otherj_bir_mon = td_glas_bir_mon + td_manc_bir_mon + td_ply_bir_mon;
td_otherj_bir_tues = td_glas_bir_tues + td_manc_bir_tues + td_ply_bir_tues;
td_otherj_bir_wed = td_glas_bir_wed + td_manc_bir_wed + td_ply_bir_wed;
td_otherj_bir_thur = td_glas_bir_thur + td_manc_bir_thur + td_ply_bir_thur;
td_otherj_bir_fri = td_glas_bir_fri + td_manc_bir_fri + td_ply_bir_fri;
td_otherj_bir_sat = td_glas_bir_sat + td_manc_bir_sat + td_ply_bir_sat;

td_otherj_ply_mon = td_glas_ply_mon + td_manc_ply_mon + td_bir_ply_mon;
td_otherj_ply_tues = td_glas_ply_tues + td_manc_ply_tues + td_bir_ply_tues;
td_otherj_ply_wed = td_glas_ply_wed + td_manc_ply_wed + td_bir_ply_wed;
td_otherj_ply_thur = td_glas_ply_thur + td_manc_ply_thur + td_bir_ply_thur;
td_otherj_ply_fri = td_glas_ply_fri + td_manc_ply_fri + td_bir_ply_fri;
td_otherj_ply_sat = td_glas_ply_sat + td_manc_ply_sat + td_bir_ply_sat;

/* Total number of damaged cars from depot i to be transffered out to every other depot j, beginning of day (td_i_otherj_t) 
SUM[j=glas to ply]td_ijt-1 = tu_i_otherj_t for all i, t
*/

td_glas_otherj_mon = td_glas_manc_mon + td_glas_bir_mon + td_glas_ply_mon;
td_glas_otherj_tues = td_glas_manc_tues + td_glas_bir_tues + td_glas_ply_tues;
td_glas_otherj_wed = td_glas_manc_wed + td_glas_bir_wed + td_glas_ply_wed;
td_glas_otherj_thur = td_glas_manc_thur + td_glas_bir_thur + td_glas_ply_thur;
td_glas_otherj_fri = td_glas_manc_fri + td_glas_bir_fri + td_glas_ply_fri;
td_glas_otherj_sat = td_glas_manc_sat + td_glas_bir_sat + td_glas_ply_sat;

td_manc_otherj_mon = td_manc_glas_mon + td_manc_bir_mon + td_manc_ply_mon;
td_manc_otherj_tues = td_manc_glas_tues + td_manc_bir_tues + td_manc_ply_tues;
td_manc_otherj_wed = td_manc_glas_wed + td_manc_bir_wed + td_manc_ply_wed;
td_manc_otherj_thur = td_manc_glas_thur + td_manc_bir_thur + td_manc_ply_thur;
td_manc_otherj_fri = td_manc_glas_fri + td_manc_bir_fri + td_manc_ply_fri;
td_manc_otherj_sat = td_manc_glas_sat + td_manc_bir_sat + td_manc_ply_sat;

td_bir_otherj_mon = td_bir_glas_mon + td_bir_manc_mon + td_bir_ply_mon;
td_bir_otherj_tues = td_bir_glas_tues + td_bir_manc_tues + td_bir_ply_tues;
td_bir_otherj_wed = td_bir_glas_wed + td_bir_manc_wed + td_bir_ply_wed;
td_bir_otherj_thur = td_bir_glas_thur + td_bir_manc_thur + td_bir_ply_thur;
td_bir_otherj_fri = td_bir_glas_fri + td_bir_manc_fri + td_bir_ply_fri;
td_bir_otherj_sat = td_bir_glas_sat + td_bir_manc_sat + td_bir_ply_sat;

td_ply_otherj_mon = td_ply_glas_mon + td_ply_manc_mon + td_ply_bir_mon;
td_ply_otherj_tues = td_ply_glas_tues + td_ply_manc_tues + td_ply_bir_tues;
td_ply_otherj_wed = td_ply_glas_wed + td_ply_manc_wed + td_ply_bir_wed;
td_ply_otherj_thur = td_ply_glas_thur + td_ply_manc_thur + td_ply_bir_thur;
td_ply_otherj_fri = td_ply_glas_fri + td_ply_manc_fri + td_ply_bir_fri;
td_ply_otherj_sat = td_ply_glas_sat + td_ply_manc_sat + td_ply_bir_sat;

/* Number of damaged cars into depot i, beginning of day (nd_in_i_t) 
SUM[j=glas to ply]SUM[k=1 to 3](0.1*P_ji*Q_k*tr_jt-k) + SUM[j=glas to ply](td_jit-1) + ed_it-1 = nd_in_i_t, for all i, t
*/

nd_in_glas_mon = crd_1to3d_glas_mon + td_otherj_glas_sat + ed_glas_sat;
nd_in_glas_tues = crd_1to3d_glas_tues + td_otherj_glas_mon + ed_glas_mon;
nd_in_glas_wed = crd_1to3d_glas_wed + td_otherj_glas_tues + ed_glas_tues;
nd_in_glas_thur = crd_1to3d_glas_thur + td_otherj_glas_wed + ed_glas_wed;
nd_in_glas_fri = crd_1to3d_glas_fri + td_otherj_glas_thur + ed_glas_thur;
nd_in_glas_sat = crd_1to3d_glas_sat + td_otherj_glas_fri + ed_glas_fri;

nd_in_manc_mon = crd_1to3d_manc_mon + td_otherj_manc_sat + ed_manc_sat;
nd_in_manc_tues = crd_1to3d_manc_tues + td_otherj_manc_mon + ed_manc_mon;
nd_in_manc_wed = crd_1to3d_manc_wed + td_otherj_manc_tues + ed_manc_tues;
nd_in_manc_thur = crd_1to3d_manc_thur + td_otherj_manc_wed + ed_manc_wed;
nd_in_manc_fri = crd_1to3d_manc_fri + td_otherj_manc_thur + ed_manc_thur;
nd_in_manc_sat = crd_1to3d_manc_sat + td_otherj_manc_fri + ed_manc_fri;

nd_in_bir_mon = crd_1to3d_bir_mon + td_otherj_bir_sat + ed_bir_sat;
nd_in_bir_tues = crd_1to3d_bir_tues + td_otherj_bir_mon + ed_bir_mon;
nd_in_bir_wed = crd_1to3d_bir_wed + td_otherj_bir_tues + ed_bir_tues;
nd_in_bir_thur = crd_1to3d_bir_thur + td_otherj_bir_wed + ed_bir_wed;
nd_in_bir_fri = crd_1to3d_bir_fri + td_otherj_bir_thur + ed_bir_thur;
nd_in_bir_sat = crd_1to3d_bir_sat + td_otherj_bir_fri + ed_bir_fri;

nd_in_ply_mon = crd_1to3d_ply_mon + td_otherj_ply_sat + ed_ply_sat;
nd_in_ply_tues = crd_1to3d_ply_tues + td_otherj_ply_mon + ed_ply_mon;
nd_in_ply_wed = crd_1to3d_ply_wed + td_otherj_ply_tues + ed_ply_tues;
nd_in_ply_thur = crd_1to3d_ply_thur + td_otherj_ply_wed + ed_ply_wed;
nd_in_ply_fri = crd_1to3d_ply_fri + td_otherj_ply_thur + ed_ply_thur;
nd_in_ply_sat = crd_1to3d_ply_sat + td_otherj_ply_fri + ed_ply_fri;

/* Number of damaged cars out of depot i, beginning of day (nd_out_i_t) 
rp_it + SUM[j=glas to ply]td_ijt-1 + ed_it = nd_out_i_t, for all i, t
*/

nd_out_glas_mon = td_glas_otherj_mon + ed_glas_mon; 
nd_out_glas_tues = td_glas_otherj_tues + ed_glas_tues;
nd_out_glas_wed = td_glas_otherj_wed + ed_glas_wed;
nd_out_glas_thur = td_glas_otherj_thur + ed_glas_thur;
nd_out_glas_fri = td_glas_otherj_fri + ed_glas_fri;
nd_out_glas_sat = td_glas_otherj_sat + ed_glas_sat;

nd_out_manc_mon = rp_manc_mon + td_manc_otherj_mon + ed_manc_mon;
nd_out_manc_tues = rp_manc_tues + td_manc_otherj_tues + ed_manc_tues;
nd_out_manc_wed = rp_manc_wed + td_manc_otherj_wed + ed_manc_wed;
nd_out_manc_thur = rp_manc_thur + td_manc_otherj_thur + ed_manc_thur;
nd_out_manc_fri= rp_manc_fri + td_manc_otherj_fri + ed_manc_fri;
nd_out_manc_sat= rp_manc_sat + td_manc_otherj_sat + ed_manc_sat;

nd_out_bir_mon = rp_bir_mon + td_bir_otherj_mon + ed_bir_mon;
nd_out_bir_tues = rp_bir_tues + td_bir_otherj_tues + ed_bir_tues;
nd_out_bir_wed = rp_bir_wed + td_bir_otherj_wed + ed_bir_wed;
nd_out_bir_thur = rp_bir_thur + td_bir_otherj_thur + ed_bir_thur;
nd_out_bir_fri = rp_bir_fri + td_bir_otherj_fri + ed_bir_fri;
nd_out_bir_sat = rp_bir_sat + td_bir_otherj_sat + ed_bir_sat;

nd_out_ply_mon = rp_ply_mon + td_ply_otherj_mon + ed_ply_mon;
nd_out_ply_tues = rp_ply_tues + td_ply_otherj_tues + ed_ply_tues;
nd_out_ply_wed = rp_ply_wed + td_ply_otherj_wed + ed_ply_wed;
nd_out_ply_thur = rp_ply_thur + td_ply_otherj_thur + ed_ply_thur;
nd_out_ply_fri = rp_ply_fri + td_ply_otherj_fri + ed_ply_fri;
nd_out_ply_sat = rp_ply_sat + td_ply_otherj_sat + ed_ply_sat;

/* Repair variables (R_i) */

R_manc = 12 + 5M1 + 5M2;
R_bir = 20 + 5B1 + 5B2;
R_ply = 0 + 5P1;

/* Objective function variables */

/* Number of damaged and undamaged cars in all depots, beginning of Wednesday */ 
damaged_undamaged_cars_all_depot_wed = nd_in_glas_wed + nd_in_manc_wed + nd_in_bir_wed + nd_in_ply_wed + nu_in_glas_wed + nu_in_manc_wed + nu_in_bir_wed + nu_in_ply_wed;

/* Number of cars rented out from every depots on Monday for 3 days */
cars_rented_all_depot_mon_3d = 0.25tr_glas_mon + 0.25tr_manc_mon + 0.25tr_bir_mon + 0.25tr_ply_mon;

/* Number of cars rented out from every depots on Tuesday for 2 or 3 days */
cars_rented_all_depot_tues_2or3d = 0.45tr_glas_tues + 0.45tr_manc_tues + 0.45tr_bir_tues + 0.45tr_ply_tues;

/* Total number of cars 
SUM[i=glas to ply](0.25tr_i1 + 0.45tr_i2 + nu_i3 + nd_i3) = num_cars
*/
num_cars = damaged_undamaged_cars_all_depot_wed + cars_rented_all_depot_mon_3d + cars_rented_all_depot_tues_2or3d;


/* SUM[i=glas to ply]SUM[t=mon to sat, t != sat]SUM[k=1 to 3](P_ii*Q_k*(RCA_k-CS_k+10)*tr_it) + SUM[i=glas to ply]SUM[t=sat to sat](P_ii*Q_1*(RCC-CS_1+10)*tr_it) + SUM[i=glas to ply]SUM[t=sat to sat]SUM[k=1 to 3](P_ii*Q_k*(RCA_k-CS_k+10)*tr_it) = total_rental_profit_return_same_depot */
total_rental_profit_return_same_depot = 34.8tr_glas_mon + 31.9tr_manc_mon + 31.32tr_bir_mon + 30.74tr_ply_mon + 34.8tr_glas_tues + 31.9tr_manc_tues + 31.32tr_bir_tues + 30.74tr_ply_tues + 34.8tr_glas_wed + 31.9tr_manc_wed + 31.32tr_bir_wed + 30.74tr_ply_wed + 34.8tr_glas_thur + 31.9tr_manc_thur + 31.32tr_bir_thur + 30.74tr_ply_thur + 34.8tr_glas_fri + 31.9tr_manc_fri + 31.32tr_bir_fri + 30.74tr_ply_fri + 6.6tr_glas_sat + 6.05tr_manc_sat + 5.94tr_bir_sat + 5.83tr_ply_sat + 21.6tr_glas_sat + 19.8tr_manc_sat + 19.44tr_bir_sat + 19.08tr_ply_sat;

/* SUM[i=glas to ply]SUM[j=glas to ply]SUM[t=mon to sat, t!=sat]SUM[k=1 to 3](P_ij*Q_k(RCB_k-CS_k+10)*tr_it) + SUM[i=glas to ply]SUM[j=glas to ply]SUM[t=sat to sat](P_ij*Q_1(RCD-CS+10)*tr_it) + SUM[i=glas to ply]SUM[j=glas to ply]SUM[t=sat to sat]SUM[k=1 to 3](P_ij*Q_k*(RCB_k-CS_k+10)*tr_it) = total_rental_profit_return_diff_depot */
total_rental_profit_return_diff_depot = 33tr_glas_mon + 37.125tr_manc_mon + 37.95tr_bir_mon + 38.775tr_ply_mon + 33tr_glas_tues + 37.125tr_manc_tues + 37.95tr_bir_tues + 38.775tr_ply_tues + 33tr_glas_wed + 37.125tr_manc_wed + 37.95tr_bir_wed + 38.775tr_ply_wed + 33tr_glas_thur + 37.125tr_manc_thur + 37.95tr_bir_thur + 38.775tr_ply_thur + 33tr_glas_fri + 37.125tr_manc_fri + 37.95tr_bir_fri + 38.775tr_ply_fri + 8.8tr_glas_sat + 9.9tr_manc_sat + 10.12tr_bir_sat + 10.34tr_ply_sat + 19.8tr_glas_sat + 22.275tr_manc_sat + 22.77tr_bir_sat + 23.265tr_ply_sat;

/* SUM[i=glas to ply]SUM[j=glas to ply]SUM[t=mon to sat](C_ij*tu_ijt) = total_transfer_cost_undamaged */
total_transfer_cost_undamaged = 20tu_glas_manc_mon + 30tu_glas_bir_mon + 50tu_glas_ply_mon + 20tu_glas_manc_tues + 30tu_glas_bir_tues + 50tu_glas_ply_tues + 20tu_glas_manc_wed + 30tu_glas_bir_wed + 50tu_glas_ply_wed + 20tu_glas_manc_thur + 30tu_glas_bir_thur + 50tu_glas_ply_thur + 20tu_glas_manc_fri + 30tu_glas_bir_fri + 50tu_glas_ply_fri + 20tu_glas_manc_sat + 30tu_glas_bir_sat + 50tu_glas_ply_sat + 20tu_manc_glas_mon + 15tu_manc_bir_mon + 35tu_manc_ply_mon + 20tu_manc_glas_tues + 15tu_manc_bir_tues + 35tu_manc_ply_tues + 20tu_manc_glas_wed + 15tu_manc_bir_wed + 35tu_manc_ply_wed + 20tu_manc_glas_thur + 15tu_manc_bir_thur + 35tu_manc_ply_thur + 20tu_manc_glas_fri + 15tu_manc_bir_fri + 35tu_manc_ply_fri + 20tu_manc_glas_sat + 15tu_manc_bir_sat + 35tu_manc_ply_sat + 30tu_bir_glas_mon + 15tu_bir_manc_mon + 25tu_bir_ply_mon + 30tu_bir_glas_tues + 15tu_bir_manc_tues + 25tu_bir_ply_tues + 30tu_bir_glas_wed + 15tu_bir_manc_wed + 25tu_bir_ply_wed + 30tu_bir_glas_thur + 15tu_bir_manc_thur + 25tu_bir_ply_thur + 30tu_bir_glas_fri + 15tu_bir_manc_fri + 25tu_bir_ply_fri + 30tu_bir_glas_sat + 15tu_bir_manc_sat + 25tu_bir_ply_sat + 50tu_ply_glas_mon + 35tu_ply_manc_mon + 25tu_ply_bir_mon + 50tu_ply_glas_tues + 35tu_ply_manc_tues + 25tu_ply_bir_tues + 50tu_ply_glas_wed + 35tu_ply_manc_wed + 25tu_ply_bir_wed + 50tu_ply_glas_thur + 35tu_ply_manc_thur + 25tu_ply_bir_thur + 50tu_ply_glas_fri + 35tu_ply_manc_fri + 25tu_ply_bir_fri + 50tu_ply_glas_sat + 35tu_ply_manc_sat + 25tu_ply_bir_sat;

/* SUM[i=glas to ply]SUM[j=glas to ply]SUM[t=mon to sat](C_ij*td_ijt) = total_transfer_cost_damaged */
total_transfer_cost_damaged = 20td_glas_manc_mon + 30td_glas_bir_mon + 50td_glas_ply_mon + 20td_glas_manc_tues + 30td_glas_bir_tues + 50td_glas_ply_tues + 20td_glas_manc_wed + 30td_glas_bir_wed + 50td_glas_ply_wed + 20td_glas_manc_thur + 30td_glas_bir_thur + 50td_glas_ply_thur + 20td_glas_manc_fri + 30td_glas_bir_fri + 50td_glas_ply_fri + 20td_glas_manc_sat + 30td_glas_bir_sat + 50td_glas_ply_sat + 20td_manc_glas_mon + 15td_manc_bir_mon + 35td_manc_ply_mon + 20td_manc_glas_tues + 15td_manc_bir_tues + 35td_manc_ply_tues + 20td_manc_glas_wed + 15td_manc_bir_wed + 35td_manc_ply_wed + 20td_manc_glas_thur + 15td_manc_bir_thur + 35td_manc_ply_thur + 20td_manc_glas_fri + 15td_manc_bir_fri + 35td_manc_ply_fri + 20td_manc_glas_sat + 15td_manc_bir_sat + 35td_manc_ply_sat + 30td_bir_glas_mon + 15td_bir_manc_mon + 25td_bir_ply_mon + 30td_bir_glas_tues + 15td_bir_manc_tues + 25td_bir_ply_tues + 30td_bir_glas_wed + 15td_bir_manc_wed + 25td_bir_ply_wed + 30td_bir_glas_thur + 15td_bir_manc_thur + 25td_bir_ply_thur + 30td_bir_glas_fri + 15td_bir_manc_fri + 25td_bir_ply_fri + 30td_bir_glas_sat + 15td_bir_manc_sat + 25td_bir_ply_sat + 50td_ply_glas_mon + 35td_ply_manc_mon + 25td_ply_bir_mon + 50td_ply_glas_tues + 35td_ply_manc_tues + 25td_ply_bir_tues + 50td_ply_glas_wed + 35td_ply_manc_wed + 25td_ply_bir_wed + 50td_ply_glas_thur + 35td_ply_manc_thur + 25td_ply_bir_thur + 50td_ply_glas_fri + 35td_ply_manc_fri + 25td_ply_bir_fri + 50td_ply_glas_sat + 35td_ply_manc_sat + 25td_ply_bir_sat;

/* 15n = opportunity_cost */
opportunity_cost = 15num_cars;

/* 18000B1 + 8000B2 + 20000M1 + 5000M2 + 19000P1 = expansion_cost */
expansion_cost = 18000B1 + 8000B2 + 20000M1 + 5000M2 + 19000P1;

/* FUNCTIONAL CONSTRAINTS --------------------------------------------------------------------------------------- */

/* 1: The number of cars rented out, at a given depot, in the beginning of the day, must be less than or equal to the demand */

tr_glas_mon <= 100;
tr_glas_tues <= 150;
tr_glas_wed <= 135;
tr_glas_thur <= 83;
tr_glas_fri <= 120;
tr_glas_sat <= 230;

tr_manc_mon <= 250;
tr_manc_tues <= 143;
tr_manc_wed <= 80;
tr_manc_thur <= 225;
tr_manc_fri <= 210;
tr_manc_sat <= 98;

tr_bir_mon <= 95;
tr_bir_tues <= 195;
tr_bir_wed <= 242;
tr_bir_thur <= 111;
tr_bir_fri <= 70;
tr_bir_sat <= 124;

tr_ply_mon <= 160;
tr_ply_tues <= 99;
tr_ply_wed <= 55;
tr_ply_thur <= 96;
tr_ply_fri <= 115;
tr_ply_sat <= 80;

/* 2: The number of undamaged cars going into and out of a depot, in the beginning of the day, must equal each other */

nu_in_glas_mon = nu_out_glas_mon;
nu_in_glas_tues = nu_out_glas_tues;
nu_in_glas_wed = nu_out_glas_wed;
nu_in_glas_thur = nu_out_glas_thur;
nu_in_glas_fri = nu_out_glas_fri;
nu_in_glas_sat = nu_out_glas_sat;

nu_in_manc_mon = nu_out_manc_mon;
nu_in_manc_tues = nu_out_manc_tues;
nu_in_manc_wed = nu_out_manc_wed;
nu_in_manc_thur = nu_out_manc_thur;
nu_in_manc_fri = nu_out_manc_fri;
nu_in_manc_sat = nu_out_manc_sat;

nu_in_bir_mon = nu_out_bir_mon;
nu_in_bir_tues = nu_out_bir_tues;
nu_in_bir_wed = nu_out_bir_wed;
nu_in_bir_thur = nu_out_bir_thur;
nu_in_bir_fri = nu_out_bir_fri;
nu_in_bir_sat = nu_out_bir_sat;

nu_in_ply_mon = nu_out_ply_mon;
nu_in_ply_tues = nu_out_ply_tues;
nu_in_ply_wed = nu_out_ply_wed;
nu_in_ply_thur = nu_out_ply_thur;
nu_in_ply_fri = nu_out_ply_fri;
nu_in_ply_sat = nu_out_ply_sat;

/* 3: The number of damaged cars going into and out of a depot, in the beginning of the day, must equal each other */

nd_in_glas_mon = nd_out_glas_mon;
nd_in_glas_tues = nd_out_glas_tues;
nd_in_glas_wed = nd_out_glas_wed;
nd_in_glas_thur = nd_out_glas_thur;
nd_in_glas_fri = nd_out_glas_fri;
nd_in_glas_sat = nd_out_glas_sat;

nd_in_manc_mon = nd_out_manc_mon;
nd_in_manc_tues = nd_out_manc_tues;
nd_in_manc_wed = nd_out_manc_wed;
nd_in_manc_thur = nd_out_manc_thur;
nd_in_manc_fri = nd_out_manc_fri;
nd_in_manc_sat = nd_out_manc_sat;

nd_in_bir_mon = nd_out_bir_mon;
nd_in_bir_tues = nd_out_bir_tues;
nd_in_bir_wed = nd_out_bir_wed;
nd_in_bir_thur = nd_out_bir_thur;
nd_in_bir_fri = nd_out_bir_fri;
nd_in_bir_sat = nd_out_bir_sat;

nd_in_ply_mon = nd_out_ply_mon;
nd_in_ply_tues = nd_out_ply_tues;
nd_in_ply_wed = nd_out_ply_wed;
nd_in_ply_thur = nd_out_ply_thur;
nd_in_ply_fri = nd_out_ply_fri;
nd_in_ply_sat = nd_out_ply_sat;

/* 4: The number of cars repaired must not exceed the repair capacity of a given depot per day */

rp_manc_mon <= R_manc;
rp_manc_tues <= R_manc;
rp_manc_wed <= R_manc;
rp_manc_thur <= R_manc;
rp_manc_fri <= R_manc;
rp_manc_sat <= R_manc;

rp_bir_mon <= R_bir;
rp_bir_tues <= R_bir;
rp_bir_wed <= R_bir;
rp_bir_thur <= R_bir;
rp_bir_fri <= R_bir;
rp_bir_sat <= R_bir;

rp_ply_mon <= R_ply;
rp_ply_tues <= R_ply;
rp_ply_wed <= R_ply;
rp_ply_thur <= R_ply;
rp_ply_fri <= R_ply;
rp_ply_sat <= R_ply;

/* 5: 3 max expansions and linking expansion constraints */

B2 <= B1;
M2 <= M1;

B1 + B2 + M1 + M2 + P1 <= 3;

/* NON-NEGATIVITY CONSTRAINTS --------------------------------------------------------------------------------------------------- */

/* Number of cars rented from a depot i, beginning of day t */

tr_glas_mon >= 0;
tr_glas_tues >= 0;
tr_glas_wed >= 0;
tr_glas_thur >= 0;
tr_glas_fri >= 0;
tr_glas_sat >= 0;

tr_manc_mon >= 0;
tr_manc_tues >= 0;
tr_manc_wed >= 0;
tr_manc_thur >= 0;
tr_manc_fri >= 0;
tr_manc_sat >= 0;

tr_bir_mon >= 0;
tr_bir_tues >= 0;
tr_bir_wed >= 0;
tr_bir_thur >= 0;
tr_bir_fri >= 0;
tr_bir_sat >= 0;

tr_ply_mon >= 0;
tr_ply_tues >= 0;
tr_ply_wed >= 0;
tr_ply_thur >= 0;
tr_ply_fri >= 0;
tr_ply_sat >= 0;

/* Number of cars to be repaired at a repair depot i, beginning of day t */

rp_manc_mon >= 0;
rp_manc_tues >= 0;
rp_manc_wed >= 0;
rp_manc_thur >= 0;
rp_manc_fri >= 0;
rp_manc_sat >= 0;

rp_bir_mon >= 0;
rp_bir_tues >= 0;
rp_bir_wed >= 0;
rp_bir_thur >= 0;
rp_bir_fri >= 0;
rp_bir_sat >= 0;

rp_ply_mon >= 0;
rp_ply_tues >= 0;
rp_ply_wed >= 0;
rp_ply_thur >= 0;
rp_ply_fri >= 0;
rp_ply_sat >= 0;

/* Number of undamaged cars to be transferred from depot i to depot j, beginning day t */

tu_glas_manc_mon >= 0;
tu_glas_manc_tues >= 0;
tu_glas_manc_wed >= 0;
tu_glas_manc_thur >= 0;
tu_glas_manc_fri >= 0;
tu_glas_manc_sat >= 0;

tu_glas_bir_mon >= 0;
tu_glas_bir_tues >= 0;
tu_glas_bir_wed >= 0;
tu_glas_bir_thur >= 0;
tu_glas_bir_fri >= 0;
tu_glas_bir_sat >= 0;

tu_glas_ply_mon >= 0;
tu_glas_ply_tues >= 0;
tu_glas_ply_wed >= 0;
tu_glas_ply_thur >= 0;
tu_glas_ply_fri >= 0;
tu_glas_ply_sat >= 0;

tu_manc_glas_mon >= 0;
tu_manc_glas_tues >= 0;
tu_manc_glas_wed >= 0;
tu_manc_glas_thur >= 0;
tu_manc_glas_fri >= 0;
tu_manc_glas_sat >= 0;

tu_manc_bir_mon >= 0;
tu_manc_bir_tues >= 0;
tu_manc_bir_wed >= 0;
tu_manc_bir_thur >= 0;
tu_manc_bir_fri >= 0;
tu_manc_bir_sat >= 0;

tu_manc_ply_mon >= 0;
tu_manc_ply_tues >= 0;
tu_manc_ply_wed >= 0;
tu_manc_ply_thur >= 0;
tu_manc_ply_fri >= 0;
tu_manc_ply_sat >= 0;

tu_bir_glas_mon >= 0;
tu_bir_glas_tues >= 0;
tu_bir_glas_wed >= 0;
tu_bir_glas_thur >= 0;
tu_bir_glas_fri >= 0;
tu_bir_glas_sat >= 0;

tu_bir_manc_mon >= 0;
tu_bir_manc_tues >= 0;
tu_bir_manc_wed >= 0;
tu_bir_manc_thur >= 0;
tu_bir_manc_fri >= 0;
tu_bir_manc_sat >= 0;

tu_bir_ply_mon >= 0;
tu_bir_ply_tues >= 0;
tu_bir_ply_wed >= 0;
tu_bir_ply_thur >= 0;
tu_bir_ply_fri >= 0;
tu_bir_ply_sat >= 0;

tu_ply_glas_mon >= 0;
tu_ply_glas_tues >= 0;
tu_ply_glas_wed >= 0;
tu_ply_glas_thur >= 0;
tu_ply_glas_fri >= 0;
tu_ply_glas_sat >= 0;

tu_ply_manc_mon >= 0;
tu_ply_manc_tues >= 0;
tu_ply_manc_wed >= 0;
tu_ply_manc_thur >= 0;
tu_ply_manc_fri >= 0;
tu_ply_manc_sat >= 0;

tu_ply_bir_mon >= 0;
tu_ply_bir_tues >= 0;
tu_ply_bir_wed >= 0;
tu_ply_bir_thur >= 0;
tu_ply_bir_fri >= 0;
tu_ply_bir_sat >= 0;

/* Number of damaged cars to be transffered from depot i to depot j, beginning of day t */

td_glas_manc_mon >= 0;
td_glas_manc_tues >= 0;
td_glas_manc_wed >= 0;
td_glas_manc_thur >= 0;
td_glas_manc_fri >= 0;
td_glas_manc_sat >= 0;

td_glas_bir_mon >= 0;
td_glas_bir_tues >= 0;
td_glas_bir_wed >= 0;
td_glas_bir_thur >= 0;
td_glas_bir_fri >= 0;
td_glas_bir_sat >= 0;

td_glas_ply_mon >= 0;
td_glas_ply_tues >= 0;
td_glas_ply_wed >= 0;
td_glas_ply_thur >= 0;
td_glas_ply_fri >= 0;
td_glas_ply_sat >= 0;

td_manc_glas_mon >= 0;
td_manc_glas_tues >= 0;
td_manc_glas_wed >= 0;
td_manc_glas_thur >= 0;
td_manc_glas_fri >= 0;
td_manc_glas_sat >= 0;

td_manc_bir_mon >= 0;
td_manc_bir_tues >= 0;
td_manc_bir_wed >= 0;
td_manc_bir_thur >= 0;
td_manc_bir_fri >= 0;
td_manc_bir_sat >= 0;

td_manc_ply_mon >= 0;
td_manc_ply_tues >= 0;
td_manc_ply_wed >= 0;
td_manc_ply_thur >= 0;
td_manc_ply_fri >= 0;
td_manc_ply_sat >= 0;

td_bir_glas_mon >= 0;
td_bir_glas_tues >= 0;
td_bir_glas_wed >= 0;
td_bir_glas_thur >= 0;
td_bir_glas_fri >= 0;
td_bir_glas_sat >= 0;

td_bir_manc_mon >= 0;
td_bir_manc_tues >= 0;
td_bir_manc_wed >= 0;
td_bir_manc_thur >= 0;
td_bir_manc_fri >= 0;
td_bir_manc_sat >= 0;

td_bir_ply_mon >= 0;
td_bir_ply_tues >= 0;
td_bir_ply_wed >= 0;
td_bir_ply_thur >= 0;
td_bir_ply_fri >= 0;
td_bir_ply_sat >= 0;

td_ply_glas_mon >= 0;
td_ply_glas_tues >= 0;
td_ply_glas_wed >= 0;
td_ply_glas_thur >= 0;
td_ply_glas_fri >= 0;
td_ply_glas_sat >= 0;

td_ply_manc_mon >= 0;
td_ply_manc_tues >= 0;
td_ply_manc_wed >= 0;
td_ply_manc_thur >= 0;
td_ply_manc_fri >= 0;
td_ply_manc_sat >= 0;

td_ply_bir_mon >= 0;
td_ply_bir_tues >= 0;
td_ply_bir_wed >= 0;
td_ply_bir_thur >= 0;
td_ply_bir_fri >= 0;
td_ply_bir_sat >= 0;

/* Number of undamaged cars left at depot i during day t */

eu_glas_mon >= 0;
eu_glas_tues >= 0;
eu_glas_wed >= 0;
eu_glas_thur >= 0;
eu_glas_fri >= 0;
eu_glas_sat >= 0;

eu_manc_mon >= 0;
eu_manc_tues >= 0;
eu_manc_wed >= 0;
eu_manc_thur >= 0;
eu_manc_fri >= 0;
eu_manc_sat >= 0;

eu_bir_mon >= 0;
eu_bir_tues >= 0;
eu_bir_wed >= 0;
eu_bir_thur >= 0;
eu_bir_fri >= 0;
eu_bir_sat >= 0;

eu_ply_mon >= 0;
eu_ply_tues >= 0;
eu_ply_wed >= 0;
eu_ply_thur >= 0;
eu_ply_fri >= 0;
eu_ply_sat >= 0;

/* Number of damaged cars left at depot i during day t */

ed_glas_mon >= 0;
ed_glas_tues >= 0;
ed_glas_wed >= 0;
ed_glas_thur >= 0;
ed_glas_fri >= 0;
ed_glas_sat >= 0;

ed_manc_mon >= 0;
ed_manc_tues >= 0;
ed_manc_wed >= 0;
ed_manc_thur >= 0;
ed_manc_fri >= 0;
ed_manc_sat >= 0;

ed_bir_mon >= 0;
ed_bir_tues >= 0;
ed_bir_wed >= 0;
ed_bir_thur >= 0;
ed_bir_fri >= 0;
ed_bir_sat >= 0;

ed_ply_mon >= 0;
ed_ply_tues >= 0;
ed_ply_wed >= 0;
ed_ply_thur >= 0;
ed_ply_fri >= 0;
ed_ply_sat >= 0;

/* BINARY CONSTRAINTS -------------------------------------- */
bin B1, B2, M1, M2, P1;
