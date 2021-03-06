k,b=var('k,b')
r(k,b)=-sin(k)^2/(1-4*b*sin(k)^2)
p=plot(4*r(k/2,0),(k,0,pi),thickness=2,linestyle=':',legend_label=r'$\beta=0$')+plot(4*r(k/2,1/12),(k,0,pi),thickness=2,linestyle='--',legend_label=r'$\beta=1/12$',color='green')+plot(4*r(k/2,1/8.13),(k,0,pi),thickness=2,linestyle='-.',legend_label=r'$\beta=1/8.13$',color='red')+plot(-k^2,(k,0,pi),thickness=2,linestyle='-',legend_label=r'exact',color='black')+plot(4*r(k/2,1/6.73),(k,0,pi),thickness=2,linestyle='--',legend_label=r'$\beta=1/6.73$',color='purple')
p.set_legend_options(title='Second Derivative Approximations')
p.save(filename='junk_sage.pdf',frame=True,axes_labels=['wavenumber',''],gridlines=True)