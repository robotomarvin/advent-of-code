s=50;
p $<.map{|x|s=(s+x.tr("LR","-+").to_i)%100}.count(0)
