@partner_powershop = Partner.find_or_create_by(
  name: "Powershop",
  industry: 0,
  line: "Australia’s Greenest Power Company (Greenpeace 2014 & 2015)"
)

@partner_energy_locals = Partner.find_or_create_by(
  name: "Energy Locals",
  industry: 0,
  line: "Social enterprise offering Australia's fairest energy, with half the profit put into communities and new, local renewable energy"
)

@partner_diamond_energy = Partner.find_or_create_by(
  name: "Diamond Energy",
  industry: 0,
  line: "Passionate about renewables"
)

@partner_good_super = Partner.find_or_create_by(
  name: "Good Super",
  industry: 1,
  line: "Use your super to change the world. Join the Good Super movement. It's quick, simple &amp; rewarding."
)

@partner_aus_eth = Partner.find_or_create_by(
  name: "Australian Ethical",
  industry: 1,
  line: "Join over 33,000 Australians who have chosen the super fund that’s good for the planet, people and animals."
)

@partner_future_super = Partner.find_or_create_by(
  name: "Future Super",
  industry: 1,
  line: "Switch to Australia's ONLY super fund with absolutely no investment in fossil fuels."
)

@partner_ethical_homeloans = Partner.find_or_create_by(
  name: "Ethical Homeloans",
  industry: 2,
  line: ""
)

Charity.find_or_create_by(
  name: "Asylum Seeker Resource Centre",
  short_name: "ASRC",
  description: "The Asylum Seeker Resource Centre provides community, support and bare essentials to the people who need it most",
  status: "expired"
)

Charity.find_or_create_by(
  name: "Portal Project",
  short_name: "Portal Project",
  description: "Bringing education, entertainment and personal messages from Melbourne to displaced children in South Sudan",
  status: "expired"
)

Charity.find_or_create_by(
  name: "Pollinate",
  short_name: "Pollinate",
  description: "A Pollinate Energy project aiming to spread new water filters to another 1000 urban poor Indian families",
  status: "current"
)

Charity.find_or_create_by(
  name: "Forest Stewardship Council",
  short_name: "FSC",
  description: "Environmentally appropriate, socially beneficial and economically viable management of the world's forests",
  status: "current"
)

Charity.find_or_create_by(
  name: "Conservation Volunteers",
  short_name: "Conservation Volunteers",
  description: "Important environmental and wildlife conservation projects, all carried out with the help of volunteers",
  status: "current"
)

Charity.find_or_create_by(
  name: "Big Brothers Big Sisters",
  short_name: "Big Brothers Big Sisters",
  description: "The nation's premiere donor and volunteer-supported youth mentoring organization",
  status: "current"
)

Charity.find_or_create_by(
  name: "Nature Conservation Council",
  short_name: "NCC",
  description: "The voice for nature in New South Wales",
  status: "current"
)

Charity.find_or_create_by(
  name: "Habitat for Humanity Australia",
  short_name: "Habitat for Humanity Australia",
  description: "Building homes, communities and hope",
  status: "current"
)

Charity.find_or_create_by(
  name: "Australian Cervical Cancer Foundation",
  short_name: "ACCF",
  description:  "Creating awareness of cervical cancer and its prevention in Australia",
  status: "current"
)

Charity.find_or_create_by(
  name: "Healthy Futures",
  short_name: "Healthy Futures",
  description: "Health professionals taking action on climate change to ensure a healthy future for all",
  status: "current"
)

Charity.find_or_create_by(
  name: "Friends of the Earth",
  short_name: "Friends of the Earth",
  description: "Working for a socially equitable and environmentally sustainable future",
  status: "current"
)

Charity.find_or_create_by(
  name: "Solar Citizens",
  short_name: "Solar Citizens",
  description: "The people-powered movement bringing together millions of solar owners and supporters to grow and protect solar in Australia.",
  status: "current"
)

@green_pledge = Charity.find_or_create_by(
  name: "The Green Pledge",
  short_name: "The Green Pledge",
  description: "Over one week in September, commit to taking 3 actions on climate change to kickstart lasting change in how we use energy resources.",
  status: "current"
)

Charity.find_or_create_by(
  name: "1 Million Women",
  short_name: "1 Million Women",
  description: "Building a movement of strong, inspirational women and girls acting on climate change through the way we live.",
  status: "current"
)

@ms = Charity.find_or_create_by(
  name: "MS Australia",
  short_name: "MS Australia",
  description: "Raising mondey and awareness for sufferers of MS.",
  status: "current"
)

Charity.find_or_create_by(
  name: "350",
  short_name: "350",
  description: "Using online campaigns, grassroots organizing, and mass public actions to build 100% clean energy solutions.",
  status: "current"
)

@faq_category_ethical_switch = FaqCategory.find_or_create_by(name: "Ethical Switch")
@faq_category_ethical_power = FaqCategory.find_or_create_by(name: "Ethical Power")

@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "Why switch via Ethical Switch?",
  answer: "<p>Ethical Switch provides the information you need to make the best choice of which company to switch to, including how aligned companies are to the values we hold. If you make the switch via Ethical Switch then not only will we keep you updated on any new information, and adapt to any changes, but when you make the switch we will make a donation on your behalf to one of our current charity partners.</p>"
)
		
@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "Aren't ethical products and suppliers usually more expensive?",
  answer: "<p>The short answer: no!</p><p>This is a myth that perhaps has been true at times in the past, but not today. If you look at our criteria tables you will see that many of the more ethical companies provide some of the most affordable services in the market.</p>"
)

@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "What benefit does Ethical Switch receive if I switch?",
  answer: "<p>Like other comparison websites, when you switch via our service we receive a commission fee from that company.</p><p>The difference with our service is that we only offer to switch people to  the most ethical companies in the market and because we are a  social enterprise model,  we donate as much of our commission as we can (>80% profits) to our current charity partners.</p>"
)

@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "What independent data does Ethical Switch use to rate the companies?",
  answer: "<p>We draw on publicly available data from a range of sources including company reports, AEMO electricity market data, and reports from third parties such as Greenpeace or the state ombudsman. If you would like any specific information about our sources then feel free to send any requests to hello@ethicalswitch.com.</p>"
)

@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "Does Ethical Switch compare all companies in the market?",
  answer: "<p>Ethical Switch includes comparisons for all service providers that offer relevant products to retail customers in any particular location.</p><p>We only offer switches to those companies that we give a 5 star ethical rating.</p>"
)

@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "Are your deals Australia wide?",
  answer: "<p>All of our comparison tables are available nationwide, but we currently only offer switches to people in VIC, NSW, QLD and SA.</p>"
)

@faq_category_ethical_switch.faqs.find_or_create_by(
  title: "Can I recommend an awesome charity partner to benefit from Ethical Switch?",
  answer: "<p>Absolutely! We are always looking for great new projects to support so feel free to send any suggestions to hello@ethicalswitch.com and we'll get back to you as soon as we can.</p>"
)






@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Why should I switch my power provider?",
  answer: "<p>We would all rather that the money we spent didn't cause any harm which is why we have researched which companies are having a positive effect in society.</p><p>If you would rather be with a power company that considers its effect on the environment, treats its customers well, prices its products fairly and works hard to do good then simply use our criteria tables to choose your new power provider and make the switch.</p>"
)
@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Can I switch if I'm already on a contract?",
  answer: "<p>Yes, you can always switch your provider. It's possible your existent contracts will require you to pay an exit fee but they are usually small amounts (between $25 and $75).</p><p><span class='tdu'>Powershop</span> If you switch to Powershop then they will pay that fee for you up to $75 (which is likely to be more than enough to cover your whole exit fee). You can see how much certain power companies charge for exit fees on our criteria tables.</p><p><span class='tdu'>Diamond Energy</span> If you have been with Diamond Energy for over a year then it is unlikely you will have to pay an exit fee. If you have been with Diamond Energy for less than a year then your exit fee will most likely be $22.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "How quick and easy is it to switch?",
  answer: "<p>5 minutes from now you could be switched!</p><p>All you need is your personal details (and if you're switching to Powershop, your payment details) – the switch can be 100% completed online.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "I'm moving house - can you make that easy for me?",
  answer: "<p>Absolutely!</p><p>The switching process allows you to nominate a future date and address for switching over your power.  You won't even need to speak to your current provider, that is all sorted out for you.</p><p>You can rest easy knowing that on the date you move into your new home, the power will be on.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Will switching cost me more?",
  answer: "<p>The short answer is no, it most likely won't.</p><p>We consider fair pricing to be a cornerstone of our ethical companies and only offer switches to companies that we think fit the bill.</p><p><span class='tdu'>Powershop</span>Powershop were found to be Victoria's cheapest power provider on average according to a report by the Essential Services Commission in 2014.</p><p>The report showed that in Victoria Powershop's prices were cheapest in 11 of the 15 residential scenarios shown, and Powershop was within the cheapest 3 in all 15 scenarios.</p><p>The full report is available to view <a href='http://www.esc.vic.gov.au/getattachment/e57104e1-3036-401a-b618-58c9336b7ff4/Energy-retailers-comparative-performance-report-Pr.pdf' target='_blank'>here</a></p><p><span class='tdu'>Diamond Energy</span> Diamond Energy has some of the most competitive electricity rates in VIC, SA, NSW and QLD for residential and small business customers. They continually appear as one of the lowest cost electricity retailers in government price comparison websites (eg Energy Made Easy, My Power Planner).</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Will I continue to receive my concessions and rebates?",
  answer: "<p>Absolutely!</p><p>If you are eligible, you will receive government funded concessions and rebates  where applicable.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "What about rooftop solar?",
  answer: "<p><span class='tdu'>Diamond Energy</span> Diamond Energy is the solar friendly electricity retailer and service thousands of solar customers across the country by offering some of the most competitive rates and one of the highest feed in rates. Their discounts also apply to the charges before any solar credits.</p><p>If you are one of the early adopter households who recognised the benefits of solar years ago, then you may be already receiving a state based feed in tariff under a scheme that is now closed to new recipients. Subject to eligibility check, you will continue to receive your feed in tariff when you switch.</p><p>If you are eligible for a net feed in tariff, they will top it up with their standard rate (currently 8c/kWh) - one of the highest available.</p><p><span class='tdu'>Powershop</span>Powershop supports residential solar. Customers entitled to the Premium Feed-in Tariff, Transitional Feed-in Tariff, or the current Feed-in Tariff will not lose access to their entitlements. If you are entitled to the old “one for one” Standard Feed-in Tariff that was available to households installing solar generation before 31 December 2012, you will lose access to it by switching retailers, and will revert to the current Feed-in Tariff. Please visit Victoria's Energy and Resources website about standard feed-in tariffs for more information.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Where will my power actually come from?",
  answer: "<p>Electricity is energy, and the Australian grid is an ever changing mix of the energy supplied into it. This energy can be locally sourced, renewable or from fossil fuel generators. Currently the National Energy Market (NEM) mix is only ~13% renewable sourced, with the rest coming from fossil fuels. No matter which energy retailer you buy your electricity from, the electricity is delivered via your distributor from the mix of energy present in your local area, for ease this is measured by the Australian Energy Market Operator (AEMO) centrally, for each state, while the NEM extends across the eastern seaboard from SA across Qld through to Tasmania. To help manage their business, electricity retailers have a range of ways to source their electricity, including buying from the NEM or by sourcing electricity directly from generators. The government mandates that a certain percentage of the electricity in the NEM comes from renewable sources.</p><p><span class='tdu'>Powershop</span>Powershop buys its electricity, like all retailers, from the NEM. However, Powershop is backed by Meridian Energy which owns and runs the Mt Miller wind farm, which is situated on the Eyre Peninsular in South Australia. Mt Miller wind farm produces around 180 GWh of renewable energy per year. They also own the Mt Mercer wind farm near Ballarat which has just begun generating enough electricity to supply over 100,000 households. These wind farms produce more renewable power than Powershop's customers consume. By purchasing power from Powershop you are supporting Meridian Energy and its investment in renewable energy generation in Australia.</p><p><span class='tdu'>Diamond</span>Diamond Energy sources electricity from renewable generators only, including their own Tatura and Shepparton biogas plants, two solar plants in Mildura, a food waste to energy facility in outer Sydney, wind in South Australia and from thousands of residential solar customer rooftops. They believe that clean and efficient renewable generation is going to play an increasing role in Australia's future energy mix and a major role in helping combat climate change, ahead of old and tired coal generation.</p><p>Their vision is to ‘generate change' as an electricity retailer supporting renewable generation derived from Australia's pure, natural resources. They also believe that by supporting Diamond Energy, customers can take a simple step to make their electricity spend count. Every day they are supporting renewable generation whilst enjoying competitive rates and great service for their homes and businesses</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "What is GreenPower?",
  answer: "<p>The GreenPower Program is a government managed scheme that enables Australian households and businesses to displace their electricity usage with certified renewable energy, which is added to the grid on their behalf.</p><p>With each of our switches, you may optionally select GreenPower and this will help increase the demand for renewable energy in Australia.</p><p>When you select GreenPower you are forcing your electricity provider to buy more certified renewable energy than government mandated via the RET scheme.  This helps drive investment in renewable energy in Australia!</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "What is the Renewable Energy Target (RET)?",
  answer: "<p>The Renewable Energy Target is a policy that encourages the development of renewable energy in Australia. It does this by requiring certain businesses, mainly electricity retailers, to purchase a certain number of Renewable Energy Certificates (RECs). REC's are created by renewable energy power stations, such as wind farms, that are accredited by the Clean Energy Regulator.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "How will I be helping renewable energy in Australia?",
  answer: "<p>We only offer switches to companies that own 100% renewable generation.  Your electricity bills will help keep these renewable power stations operating to reduce the reliance of Australia on coal generation.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Will my power be 100% carbon neutral?",
  answer: "<p><span class='tdu'>Powershop</span>Powershop are Australia's first 100% carbon neutral energy retailer which means if you switch to them then your power will be 100% carbon neutral at no extra cost.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Can I switch my gas as well?",
  answer: "<p>We do not currently offer a gas switch but if you would like to register your interest then feel free to e-mail us at hello@ethicalswitch.com and include your postcode.</p>"
)

@faq_category_ethical_power.faqs.find_or_create_by(
  title: "Can I get a bill comparison?",
  answer: "<p>Yes, if you would like to request a bill comparison then simply send an e-mail to hello@ethicalswitch.com with your name, e-mail address and phone number (optional) and we will be in touch shortly.</p>"
)

@nsw = State.find_or_create_by(
  name: "New South Wales",
  short_name: "NSW"
)

@vic = State.find_or_create_by(
  name: "Victoria",
  short_name: "VIC"
)

@qld = State.find_or_create_by(
  name: "Queensland",
  short_name: "QLD"
)

@sa = State.find_or_create_by(
  name: "South Australia",
  short_name: "SA"
)

@tas = State.find_or_create_by(
  name: "Tasmania",
  short_name: "TAS"
)

@act = State.find_or_create_by(
  name: "Australian Capital Territory",
  short_name: "ACT"
)

#State.find_or_create_by(
#  name: "Western Australia",
#  short_name: "WA"
#)

#State.find_or_create_by(
#  name: "Northern Territory",
#  short_name: "NT"
#)

@powershop = PowerProvider.find_or_create_by(
  name: "Powershop",
  major_shareholder: "New Zealand Government (51%)",
  major_shareholder_base: "New Zealand",
  parent_company: 'Meridian Energy',
  primary_fuel_source: "Wind",
  carbon_emissions: "0",
  renewable_energy: "100%",
  new_renewable_energy_investment: true,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: 88,
  dual_fuel: false,
  greenpeace_ranking: 8.6,
  ethical_switch_rating: 5,
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @vic.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @qld.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @nsw.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @sa.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @act.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powershop.id,
  state_id: @tas.id,
  amount: "No lock-in contracts"
)

@diamond_energy = PowerProvider.find_or_create_by(
  name: "Diamond Energy",
  major_shareholder: "Diamond Management Team (58%), SunPower Corporation (42% in 2012)",
  major_shareholder_base: "Australia/USA",
  parent_company: 'Diamond Energy',
  primary_fuel_source: "Solar",
  carbon_emissions: "0",
  renewable_energy: "100%",
  new_renewable_energy_investment: true,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: 14,
  dual_fuel: false,
  greenpeace_ranking: 8.5,
  ethical_switch_rating: 5
)

PowerProviderState.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @vic.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @qld.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @vic.id,
  amount: "$0-$22"
)

TerminationFee.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @nsw.id,
  amount: "$0-$22"
)

TerminationFee.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @sa.id,
  amount: "$0-$22"
)

TerminationFee.find_or_create_by(
  power_provider_id: @diamond_energy.id,
  state_id: @qld.id,
  amount: "$0-$22"
)

@energy_locals = PowerProvider.find_or_create_by(
  name: "Energy Locals",
  major_shareholder: "Adrian Merrick",
  major_shareholder_base: "Australia",
  parent_company: 'Energy Locals',
  primary_fuel_source: "-",
  carbon_emissions: "No Generation",
  renewable_energy: "No Generation",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: nil,
  dual_fuel: false,
  greenpeace_ranking: nil,
  ethical_switch_rating: 5
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_locals.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_locals.id,
  state_id: @nsw.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @energy_locals.id,
  state_id: @qld.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @energy_locals.id,
  state_id: @nsw.id,
  amount: "$0"
)

@origin = PowerProvider.find_or_create_by(
  name: "Origin Energy",
  major_shareholder: "HSBC Custody Nominees (Australia) Limited (20.3%)",
  major_shareholder_base: "Australia",
  parent_company: 'Origin Energy',
  primary_fuel_source: "Coal",
  carbon_emissions: "25,700",
  renewable_energy: "10%",
  new_renewable_energy_investment: false,
  no_csg_investment: false,
  greenpower_available: "Yes",
  ombudsman_complaints: "20,300",
  dual_fuel: "Yes",
  greenpeace_ranking: 5.7,
  ethical_switch_rating: 1,
)

PowerProviderState.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @act.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @qld.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @nsw.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @vic.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @sa.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @origin.id,
  state_id: @act.id,
  amount: "$0"
)

@agl = PowerProvider.find_or_create_by(
  name: "AGL Energy",
  major_shareholder: "HSBC Custody Nominees (Australia) Limited (18.36%)",
  major_shareholder_base: "Australia",
  parent_company: 'AGL Energy',
  primary_fuel_source: "Coal",
  carbon_emissions: "38,838",
  renewable_energy: "18%",
  new_renewable_energy_investment: true,
  no_csg_investment: false,
  greenpower_available: "Yes",
  ombudsman_complaints: "21,700",
  dual_fuel: "Yes",
  greenpeace_ranking: 5.1,
  ethical_switch_rating: 1,
)

PowerProviderState.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @nsw.id,
  amount: "$50 - $75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @qld.id,
  amount: "$50 - $75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @sa.id,
  amount: "$50 - $75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @agl.id,
  state_id: @vic.id,
  amount: "$50 - $75"
)

@energy_australia = PowerProvider.find_or_create_by(
  name: "Energy Australia",
  major_shareholder: "Sir Michael Kadoorie Family (35%)",
  major_shareholder_base: "Hong Kong",
  parent_company: 'CLP Holdings',
  primary_fuel_source: "Coal",
  carbon_emissions: "22,496",
  renewable_energy: "11%",
  new_renewable_energy_investment: true,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: "11,300",
  dual_fuel: "Yes",
  greenpeace_ranking: 4.9,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @act.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @vic.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @nsw.id,
  amount: "$90"
)

TerminationFee.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @qld.id,
  amount: "$90"
)

TerminationFee.find_or_create_by(
  power_provider_id: @energy_australia.id,
  state_id: @sa.id,
  amount: "$90"
)

@ergon = PowerProvider.find_or_create_by(
  name: "Ergon Energy",
  major_shareholder: "QLD Government (100%)",
  major_shareholder_base: "Australia",
  parent_company: 'Ergon Energy',
  primary_fuel_source: "Coal",
  carbon_emissions: "35,528",
  renewable_energy: "14%",
  new_renewable_energy_investment: false,
  no_csg_investment: false,
  greenpower_available: "Yes",
  ombudsman_complaints: "700",
  dual_fuel: false,
  greenpeace_ranking: 4.6,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @ergon.id,
  state_id: @qld.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @ergon.id,
  state_id: @qld.id,
  amount: "-"
)

@lumo = PowerProvider.find_or_create_by(
  name: "Lumo",
  major_shareholder: "NSW Government (58%),  VIC Government (29%),  Commonwealth Government (13%)",
  major_shareholder_base: "Australia",
  parent_company: 'Snowy Hydro',
  primary_fuel_source: "Hydro",
  carbon_emissions: "2,700",
  renewable_energy: "73%",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "10%",
  ombudsman_complaints: "3,000",
  dual_fuel: "Yes",
  greenpeace_ranking: 5.9,
  ethical_switch_rating: 2
)

PowerProviderState.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @vic.id,
  amount: "$80"
)

TerminationFee.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @nsw.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @qld.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @lumo.id,
  state_id: @sa.id,
  amount: "$75"
)

@red = PowerProvider.find_or_create_by(
  name: "Red Energy",
  major_shareholder: "NSW Government (58%),  VIC Government (29%),  Commonwealth Government (13%)",
  major_shareholder_base: "Australia",
  parent_company: 'Snowy Hydro',
  primary_fuel_source: "Hydro",
  carbon_emissions: "1,300",
  renewable_energy: "73%",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: "1,600",
  dual_fuel: "Yes",
  greenpeace_ranking: 6.0,
  ethical_switch_rating: 3
)

PowerProviderState.find_or_create_by(
  power_provider_id: @red.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @red.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @red.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @red.id,
  state_id: @vic.id,
  amount: "$45-$90"
)

TerminationFee.find_or_create_by(
  power_provider_id: @red.id,
  state_id: @nsw.id,
  amount: "$45-$90"
)

TerminationFee.find_or_create_by(
  power_provider_id: @red.id,
  state_id: @sa.id,
  amount: "$45-$90"
)

@momentum = PowerProvider.find_or_create_by(
  name: "Momentum",
  major_shareholder: "TAS Government (100%)",
  major_shareholder_base: "Australia",
  parent_company: 'Hydro Tasmania',
  primary_fuel_source: "Hydro",
  carbon_emissions: "13",
  renewable_energy: "94%",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: "1,100",
  dual_fuel: "Yes",
  greenpeace_ranking: 6.9,
  ethical_switch_rating: 4
)

PowerProviderState.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @vic.id,
  amount: "$20"
)

TerminationFee.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @nsw.id,
  amount: "$49.50 - $99"
)

TerminationFee.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @qld.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @sa.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @momentum.id,
  state_id: @act.id,
  amount: "$20"
)

@aurora = PowerProvider.find_or_create_by(
  name: "Aurora Energy",
  major_shareholder: "TAS Government (100%)",
  major_shareholder_base: "Australia",
  parent_company: 'Aurora Energy',
  primary_fuel_source: "Hydro",
  carbon_emissions: "13",
  renewable_energy: "94%",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: "500",
  dual_fuel: "Yes",
  greenpeace_ranking: 6.5,
  ethical_switch_rating: 4
)

PowerProviderState.find_or_create_by(
  power_provider_id: @aurora.id,
  state_id: @tas.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @aurora.id,
  state_id: @tas.id,
  amount: "-"
)

@simply = PowerProvider.find_or_create_by(
  name: "Simply Energy",
  major_shareholder: "Engie (71%) & Mitsui & Co Ltd (28%)",
  major_shareholder_base: "France/Japan",
  parent_company: 'Engie',
  primary_fuel_source: "Coal",
  carbon_emissions: "27,466",
  renewable_energy: "1%",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: "3,200",
  dual_fuel: "Yes",
  greenpeace_ranking: 2.9,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @vic.id,
  amount: "$22 - $77"
)

TerminationFee.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @nsw.id,
  amount: "$$75 - $95"
)

TerminationFee.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @qld.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @simply.id,
  state_id: @sa.id,
  amount: "$49.50 - $104.50"
)

@alinta = PowerProvider.find_or_create_by(
  name: "Alinta Energy",
  major_shareholder: "TPG Capital Private Equity",
  major_shareholder_base: "USA",
  parent_company: 'Alinta',
  primary_fuel_source: "Coal",
  carbon_emissions: "4,004",
  renewable_energy: "9%",
  new_renewable_energy_investment: true,
  no_csg_investment: true,
  greenpower_available: "No",
  ombudsman_complaints: "900",
  dual_fuel: "Yes",
  greenpeace_ranking: 3.4,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @alinta.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @alinta.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @alinta.id,
  state_id: @vic.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @alinta.id,
  state_id: @sa.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @alinta.id,
  state_id: @qld.id,
  amount: "$75"
)

@powerdirect = PowerProvider.find_or_create_by(
  name: "Powerdirect",
  major_shareholder: "HSBC Custody Nominees (Australia) Limited (18.36%)",
  major_shareholder_base: "Australia",
  parent_company: 'AGL Energy',
  primary_fuel_source: "Coal",
  carbon_emissions: "38,838",
  renewable_energy: "18%",
  new_renewable_energy_investment: true,
  no_csg_investment: false,
  greenpower_available: "Yes",
  ombudsman_complaints: "21,700",
  dual_fuel: "Yes",
  greenpeace_ranking: 4.7,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @vic.id,
  amount: "$20"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @act.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @nsw.id,
  amount: "$48"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @qld.id,
  amount: "$48"
)

TerminationFee.find_or_create_by(
  power_provider_id: @powerdirect.id,
  state_id: @sa.id,
  amount: "$48"
)

@actew = PowerProvider.find_or_create_by(
  name: "Actew AGL",
  major_shareholder: "ACT Government (50%) AGL Energy (50%)",
  major_shareholder_base: "Australia",
  parent_company: 'Actew Corporation/AGL Energy',
  primary_fuel_source: "Coal",
  carbon_emissions: "38,838",
  renewable_energy: "18%",
  new_renewable_energy_investment: true,
  no_csg_investment: false,
  greenpower_available: "Yes",
  ombudsman_complaints: "21,700",
  dual_fuel: "Yes",
  greenpeace_ranking: 5.8,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @actew.id,
  state_id: @act.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @actew.id,
  state_id: @nsw.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @actew.id,
  state_id: @act.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @actew.id,
  state_id: @nsw.id,
  amount: "$50"
)

@dodo = PowerProvider.find_or_create_by(
  name: "Dodo",
  major_shareholder: "HSBC Custody Nominees (Australia) Limited (11.5%)",
  major_shareholder_base: "Australia",
  parent_company: 'M2',
  primary_fuel_source: "-",
  carbon_emissions: "No Generation",
  renewable_energy: "No Generation",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "Yes",
  ombudsman_complaints: "600",
  dual_fuel: "Yes",
  greenpeace_ranking: 4.9,
  ethical_switch_rating: 2
)

PowerProviderState.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @sa.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @vic.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @nsw.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @qld.id,
  amount: "No lock-in contracts"
)

TerminationFee.find_or_create_by(
  power_provider_id: @dodo.id,
  state_id: @sa.id,
  amount: "No lock-in contracts"
)

@click = PowerProvider.find_or_create_by(
  name: "Click Energy",
  major_shareholder: "Angeleno Group Private Equity, Robeco Sam Private Equity, Cleantech Ventures",
  major_shareholder_base: "Australia/USA/Switzerland",
  parent_company: 'Click Energy',
  primary_fuel_source: "-",
  carbon_emissions: "No Generation",
  renewable_energy: "No Generation",
  new_renewable_energy_investment: false,
  no_csg_investment: true,
  greenpower_available: "25%",
  ombudsman_complaints: "1,000",
  dual_fuel: false,
  greenpeace_ranking: 4.7,
  ethical_switch_rating: 2
)

PowerProviderState.find_or_create_by(
  power_provider_id: @click.id,
  state_id: @nsw.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @click.id,
  state_id: @qld.id
)

PowerProviderState.find_or_create_by(
  power_provider_id: @click.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @click.id,
  state_id: @vic.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @click.id,
  state_id: @nsw.id,
  amount: "$0"
)

TerminationFee.find_or_create_by(
  power_provider_id: @click.id,
  state_id: @qld.id,
  amount: "$0"
)

@neighbourhood = PowerProvider.find_or_create_by(
  name: "Neighbourhood",
  major_shareholder: "TPG Capital Private Equity",
  major_shareholder_base: "USA",
  parent_company: 'Alinta',
  primary_fuel_source: "Coal",
  carbon_emissions: "4,004",
  renewable_energy: "9%",
  new_renewable_energy_investment: true,
  no_csg_investment: true,
  greenpower_available: "No",
  ombudsman_complaints: "900",
  dual_fuel: "Yes",
  greenpeace_ranking: 3.4,
  ethical_switch_rating: 1
)

PowerProviderState.find_or_create_by(
  power_provider_id: @neighbourhood.id,
  state_id: @vic.id
)

TerminationFee.find_or_create_by(
  power_provider_id: @neighbourhood.id,
  state_id: @vic.id,
  amount: "$50"
)

TerminationFee.find_or_create_by(
  power_provider_id: @neighbourhood.id,
  state_id: @qld.id,
  amount: "$75"
)

TerminationFee.find_or_create_by(
  power_provider_id: @neighbourhood.id,
  state_id: @sa.id,
  amount: "$50"
)

Message.find_or_create_by(
  name: "Mr Test Man", 
  email: "testman@fake.com", 
  postcode: "9456", 
  message: "Hey I just wanted to show you what a message would look like in the admin panel."
)

Message.find_or_create_by(
  name: "Mr Test Man", 
  email: "testman@fake.com", 
  postcode: "9456", 
  message: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit voluptatibus ipsum illo, ad minus deleniti recusandae quas sunt rem velit cumque, debitis fuga provident, sint voluptate! Alias non saepe corrupti."
)

Message.find_or_create_by(
  name: "Mr Test Man", 
  email: "testman@fake.com", 
  postcode: "9456", 
  message: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit voluptatibus ipsum illo, ad minus deleniti recusandae quas sunt rem velit cumque, debitis fuga provident, sint voluptate!."
)

Switch.find_or_create_by(
  first_name: "Test",
  last_name: "Man",
  email: "testman@fake.com",
  phone: "07777 777777", 
  partner_id: @partner_powershop.id, 
  charity_id: nil,
  referrer: 0
)

Switch.find_or_create_by(
  first_name: "Test",
  last_name: "Man",
  email: "testman@fake.com",
  phone: "07777 777777", 
  partner_id: @partner_energy_locals.id, 
  charity_id: @ms.id,
  referrer: 2
)

Switch.find_or_create_by(
  first_name: "Test",
  last_name: "Man",
  email: "testman@fake.com",
  phone: "07777 777777", 
  partner_id: @partner_future_super.id, 
  charity_id: @green_pledge.id,
  referrer: 2
)