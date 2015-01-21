/* contrib/ltree/ltree--unpackaged--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION ltree" to load this file. \quit

ALTER EXTENSION ltree ADD type ltree;
ALTER EXTENSION ltree ADD function ltree_in(cstring);
ALTER EXTENSION ltree ADD function ltree_out(ltree);
ALTER EXTENSION ltree ADD function ltree_cmp(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_lt(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_le(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_eq(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_ge(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_gt(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_ne(ltree,ltree);
ALTER EXTENSION ltree ADD operator >(ltree,ltree);
ALTER EXTENSION ltree ADD operator >=(ltree,ltree);
ALTER EXTENSION ltree ADD operator <(ltree,ltree);
ALTER EXTENSION ltree ADD operator <=(ltree,ltree);
ALTER EXTENSION ltree ADD operator <>(ltree,ltree);
ALTER EXTENSION ltree ADD operator =(ltree,ltree);
ALTER EXTENSION ltree ADD function subltree(ltree,integer,integer);
ALTER EXTENSION ltree ADD function subpath(ltree,integer,integer);
ALTER EXTENSION ltree ADD function subpath(ltree,integer);
ALTER EXTENSION ltree ADD function index(ltree,ltree);
ALTER EXTENSION ltree ADD function index(ltree,ltree,integer);
ALTER EXTENSION ltree ADD function nlevel(ltree);
ALTER EXTENSION ltree ADD function ltree2text(ltree);
ALTER EXTENSION ltree ADD function text2ltree(text);
ALTER EXTENSION ltree ADD function lca(ltree[]);
ALTER EXTENSION ltree ADD function lca(ltree,ltree);
ALTER EXTENSION ltree ADD function lca(ltree,ltree,ltree);
ALTER EXTENSION ltree ADD function lca(ltree,ltree,ltree,ltree);
ALTER EXTENSION ltree ADD function lca(ltree,ltree,ltree,ltree,ltree);
ALTER EXTENSION ltree ADD function lca(ltree,ltree,ltree,ltree,ltree,ltree);
ALTER EXTENSION ltree ADD function lca(ltree,ltree,ltree,ltree,ltree,ltree,ltree);
ALTER EXTENSION ltree ADD function lca(ltree,ltree,ltree,ltree,ltree,ltree,ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_isparent(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_risparent(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_addltree(ltree,ltree);
ALTER EXTENSION ltree ADD function ltree_addtext(ltree,text);
ALTER EXTENSION ltree ADD function ltree_textadd(text,ltree);
ALTER EXTENSION ltree ADD function ltreeparentsel(internal,oid,internal,integer);
ALTER EXTENSION ltree ADD operator <@(ltree,ltree);
ALTER EXTENSION ltree ADD operator @>(ltree,ltree);
ALTER EXTENSION ltree ADD operator ^<@(ltree,ltree);
ALTER EXTENSION ltree ADD operator ^@>(ltree,ltree);
ALTER EXTENSION ltree ADD operator ||(ltree,ltree);
ALTER EXTENSION ltree ADD operator ||(ltree,text);
ALTER EXTENSION ltree ADD operator ||(text,ltree);
ALTER EXTENSION ltree ADD operator family ltree_ops using btree;
ALTER EXTENSION ltree ADD operator class ltree_ops using btree;
ALTER EXTENSION ltree ADD type lquery;
ALTER EXTENSION ltree ADD function lquery_in(cstring);
ALTER EXTENSION ltree ADD function lquery_out(lquery);
ALTER EXTENSION ltree ADD function ltq_regex(ltree,lquery);
ALTER EXTENSION ltree ADD function ltq_rregex(lquery,ltree);
ALTER EXTENSION ltree ADD operator ~(lquery,ltree);
ALTER EXTENSION ltree ADD operator ~(ltree,lquery);
ALTER EXTENSION ltree ADD operator ^~(lquery,ltree);
ALTER EXTENSION ltree ADD operator ^~(ltree,lquery);
ALTER EXTENSION ltree ADD function lt_q_regex(ltree,lquery[]);
ALTER EXTENSION ltree ADD function lt_q_rregex(lquery[],ltree);
ALTER EXTENSION ltree ADD operator ?(lquery[],ltree);
ALTER EXTENSION ltree ADD operator ?(ltree,lquery[]);
ALTER EXTENSION ltree ADD operator ^?(lquery[],ltree);
ALTER EXTENSION ltree ADD operator ^?(ltree,lquery[]);
ALTER EXTENSION ltree ADD type ltxtquery;
ALTER EXTENSION ltree ADD function ltxtq_in(cstring);
ALTER EXTENSION ltree ADD function ltxtq_out(ltxtquery);
ALTER EXTENSION ltree ADD function ltxtq_exec(ltree,ltxtquery);
ALTER EXTENSION ltree ADD function ltxtq_rexec(ltxtquery,ltree);
ALTER EXTENSION ltree ADD operator @(ltxtquery,ltree);
ALTER EXTENSION ltree ADD operator @(ltree,ltxtquery);
ALTER EXTENSION ltree ADD operator ^@(ltxtquery,ltree);
ALTER EXTENSION ltree ADD operator ^@(ltree,ltxtquery);
ALTER EXTENSION ltree ADD type ltree_gist;
ALTER EXTENSION ltree ADD function ltree_gist_in(cstring);
ALTER EXTENSION ltree ADD function ltree_gist_out(ltree_gist);
ALTER EXTENSION ltree ADD function ltree_consistent(internal,internal,smallint,oid,internal);
ALTER EXTENSION ltree ADD function ltree_compress(internal);
ALTER EXTENSION ltree ADD function ltree_decompress(internal);
ALTER EXTENSION ltree ADD function ltree_penalty(internal,internal,internal);
ALTER EXTENSION ltree ADD function ltree_picksplit(internal,internal);
ALTER EXTENSION ltree ADD function ltree_union(internal,internal);
ALTER EXTENSION ltree ADD function ltree_same(internal,internal,internal);
ALTER EXTENSION ltree ADD operator family gist_ltree_ops using gist;
ALTER EXTENSION ltree ADD operator class gist_ltree_ops using gist;
ALTER EXTENSION ltree ADD function _ltree_isparent(ltree[],ltree);
ALTER EXTENSION ltree ADD function _ltree_r_isparent(ltree,ltree[]);
ALTER EXTENSION ltree ADD function _ltree_risparent(ltree[],ltree);
ALTER EXTENSION ltree ADD function _ltree_r_risparent(ltree,ltree[]);
ALTER EXTENSION ltree ADD function _ltq_regex(ltree[],lquery);
ALTER EXTENSION ltree ADD function _ltq_rregex(lquery,ltree[]);
ALTER EXTENSION ltree ADD function _lt_q_regex(ltree[],lquery[]);
ALTER EXTENSION ltree ADD function _lt_q_rregex(lquery[],ltree[]);
ALTER EXTENSION ltree ADD function _ltxtq_exec(ltree[],ltxtquery);
ALTER EXTENSION ltree ADD function _ltxtq_rexec(ltxtquery,ltree[]);
ALTER EXTENSION ltree ADD operator <@(ltree,ltree[]);
ALTER EXTENSION ltree ADD operator @>(ltree[],ltree);
ALTER EXTENSION ltree ADD operator @>(ltree,ltree[]);
ALTER EXTENSION ltree ADD operator <@(ltree[],ltree);
ALTER EXTENSION ltree ADD operator ~(lquery,ltree[]);
ALTER EXTENSION ltree ADD operator ~(ltree[],lquery);
ALTER EXTENSION ltree ADD operator ?(lquery[],ltree[]);
ALTER EXTENSION ltree ADD operator ?(ltree[],lquery[]);
ALTER EXTENSION ltree ADD operator @(ltxtquery,ltree[]);
ALTER EXTENSION ltree ADD operator @(ltree[],ltxtquery);
ALTER EXTENSION ltree ADD operator ^<@(ltree,ltree[]);
ALTER EXTENSION ltree ADD operator ^@>(ltree[],ltree);
ALTER EXTENSION ltree ADD operator ^@>(ltree,ltree[]);
ALTER EXTENSION ltree ADD operator ^<@(ltree[],ltree);
ALTER EXTENSION ltree ADD operator ^~(lquery,ltree[]);
ALTER EXTENSION ltree ADD operator ^~(ltree[],lquery);
ALTER EXTENSION ltree ADD operator ^?(lquery[],ltree[]);
ALTER EXTENSION ltree ADD operator ^?(ltree[],lquery[]);
ALTER EXTENSION ltree ADD operator ^@(ltxtquery,ltree[]);
ALTER EXTENSION ltree ADD operator ^@(ltree[],ltxtquery);
ALTER EXTENSION ltree ADD function _ltree_extract_isparent(ltree[],ltree);
ALTER EXTENSION ltree ADD operator ?@>(ltree[],ltree);
ALTER EXTENSION ltree ADD function _ltree_extract_risparent(ltree[],ltree);
ALTER EXTENSION ltree ADD operator ?<@(ltree[],ltree);
ALTER EXTENSION ltree ADD function _ltq_extract_regex(ltree[],lquery);
ALTER EXTENSION ltree ADD operator ?~(ltree[],lquery);
ALTER EXTENSION ltree ADD function _ltxtq_extract_exec(ltree[],ltxtquery);
ALTER EXTENSION ltree ADD operator ?@(ltree[],ltxtquery);
ALTER EXTENSION ltree ADD function _ltree_consistent(internal,internal,smallint,oid,internal);
ALTER EXTENSION ltree ADD function _ltree_compress(internal);
ALTER EXTENSION ltree ADD function _ltree_penalty(internal,internal,internal);
ALTER EXTENSION ltree ADD function _ltree_picksplit(internal,internal);
ALTER EXTENSION ltree ADD function _ltree_union(internal,internal);
ALTER EXTENSION ltree ADD function _ltree_same(internal,internal,internal);
ALTER EXTENSION ltree ADD operator family gist__ltree_ops using gist;
ALTER EXTENSION ltree ADD operator class gist__ltree_ops using gist;
