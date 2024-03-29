#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"


char* match_rating_codex(const char *str) {
    size_t len = strlen(str);
    size_t i, j;
    char c, prev;

    char *codex = malloc(7 * sizeof(char));
    if (!codex) {
        return NULL;
    }

    prev = ' ';
    for(i = 0, j = 0; i < len && j < 7; i++) {
        c = toupper(str[i]);

        if (c == ' ' || (i != 0 && (c == 'A' || c == 'E' || c == 'I' ||
                                    c == 'O' || c == 'U'))) {
            continue;
        }

        if (c == prev) {
            continue;
        }

        if (j == 6) {
            codex[3] = codex[4];
            codex[4] = codex[5];
            j = 5;
        }

        codex[j++] = c;
    }

    codex[j] = ' ';

    return codex;
}
    
MODULE = Text::MatchRatingCodex	PACKAGE = Text::MatchRatingCodex	

PROTOTYPES: DISABLE


char *
match_rating_codex (str)
	const char *	str

