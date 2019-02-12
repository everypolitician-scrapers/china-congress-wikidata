#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

sparq = 'SELECT DISTINCT ?item WHERE { ?item p:P39 [ ps:P39/wdt:P279* wd:Q10891456 ; pq:P2937 wd:Q247766 ] }'
ids = EveryPolitician::Wikidata.sparql(sparq)
EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
