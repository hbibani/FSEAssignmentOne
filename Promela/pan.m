#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - task4.pml:16 - [(run testcount(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - task4.pml:16 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC testcount */
	case 5: // STATE 1 - task4.pml:4 - [((x!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)_this)->x)!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - task4.pml:6 - [x = (x+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->x);
		((P0 *)_this)->x = (((int)((P0 *)_this)->x)+1);
#ifdef VAR_RANGES
		logval("testcount:x", ((int)((P0 *)_this)->x));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - task4.pml:7 - [x = (x-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->x);
		((P0 *)_this)->x = (((int)((P0 *)_this)->x)-1);
#ifdef VAR_RANGES
		logval("testcount:x", ((int)((P0 *)_this)->x));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - task4.pml:8 - [goto :b0] (0:14:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		;
		/* merge: printf('counter = %d\\n',x)(14, 12, 14) */
		reached[0][12] = 1;
		Printf("counter = %d\n", ((int)((P0 *)_this)->x));
		/* merge: assert((x>0))(14, 13, 14) */
		reached[0][13] = 1;
		spin_assert((((int)((P0 *)_this)->x)>0), "(x>0)", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 12 - task4.pml:12 - [printf('counter = %d\\n',x)] (0:14:0 - 4)
		IfNotBlocked
		reached[0][12] = 1;
		Printf("counter = %d\n", ((int)((P0 *)_this)->x));
		/* merge: assert((x>0))(14, 13, 14) */
		reached[0][13] = 1;
		spin_assert((((int)((P0 *)_this)->x)>0), "(x>0)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 14 - task4.pml:14 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

