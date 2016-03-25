#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/china-national-peoples-congress', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { zh: names }, batch_size: 100)

