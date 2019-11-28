/*******************************************************************************
 * @file        fir.h
 * @brief       C Library to process FIR Filters using CMSIS/DSP
 * @details     
 * @version     0.1
 * @author      Simon Burkhardt
 * @author      Mischa Studer
 * @date        2019.11.28
 * @copyright   (c) 2019 Fachhochschule Nordwestschweiz FHNW
 *              all rights reserved
 * @note        EIT Projekt 5 - HS19 - "DSP Board", Betreuer: Markus Hufschmid
*******************************************************************************/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __FIR_H
#define __FIR_H
/* Includes ------------------------------------------------------------------*/
#include <arm_math.h>
/* Private defines -----------------------------------------------------------*/

#define FIR_NUM_TAPS 29
#define FIR_BLOCK_SIZE 32

/* Exported functions ------------------------------------------------------- */
void FIR_PROCESSING_F32Process(float32_t*, float32_t*, float32_t*, float32_t*);

/* Private variables ---------------------------------------------------------*/


#ifdef	__cplusplus
}
#endif

#endif /* __FIR_H */
