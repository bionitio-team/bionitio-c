bin_PROGRAMS = bionitio
check_PROGRAMS = bionitio-test
TESTS = bionitio-test
bionitio_SOURCES = bionitio.c fasta.c log.c
bionitio_LDADD = -lm -lz
bionitio_CFLAGS = -Wall -m64 -std=gnu99 -pedantic
bionitio_test_SOURCES = test.c fasta.c log.c
bionitio_test_LDADD = -lm -lz
bionitio_test_CFLAGS = -Wall -m64 -std=gnu99 -pedantic
