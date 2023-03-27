#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SPATIALDATA_MCMICRO } from '../../../../../modules/nf-core/spatialdata/mcmicro/main.nf'

workflow test_spatialdata_mcmicro {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    SPATIALDATA_MCMICRO ( input )
}
