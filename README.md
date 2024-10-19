# It’s a bird? It’s a plane? It’s CDN!: Investigating Content Delivery Networks in the LEO Satellite Networks Era

This is the artifacts repository of the HotNets 2024 paper: It’s a bird? It’s a plane? It’s CDN!: Investigating Content Delivery Networks in the LEO Satellite Networks Era

## 📖 Abstract
Content Delivery Networks (CDNs) have been pivotal in the dramatic evolution of the Internet, handling the majority of data traffic for billions of connected users.Low-Earth-Orbit (LEO) satellite networks, such as Starlink, aim to revolutionize global connectivity by providing high-speed, low-latency Internet to remote regions.However, LEO satellite networks (LSNs) face challenges integrating with traditional CDNs, which rely on geographical proximity for efficient content delivery -- a method that clashes with the operational dynamics of LSNs. In this paper, we scrutinize the operation of CDNs in the context of LSNs, using Starlink as a case study. We develop a browser extension NetMet that performs extensive web browsing experiments from controlled nodes using both Starlink and terrestrial Internet access. Additionally, we analyse crowdsourced speed tests from Starlink users to Cloudflare CDN servers globally. Our results indicate significant performance issues for Starlink users, stemming from the misalignment between terrestrial and satellite infrastructures. We then investigate the potential for SpaceCDNs which integrate CDN infrastructure directly within the LSNs, and show that this approach offers a promising alternative that decreases latencies by over 50%, making them comparable with the CDN experience of users behind terrestrial ISPs. Our aim is to stimulate further research and discussion on overcoming the challenges of effective content delivery with growing LSN offerings.

## 📝 Reference 
```
@inproceedings{spacecdn-hotnets2024,
  title={It’s a bird? It’s a plane? It’s CDN!: Investigating Content Delivery Networks in the LEO Satellite Networks Era},
  author={Bose, Rohan and Fadaei, Saeed and Mohan, Nitinder and Kassem, Mohamed and Sastry, Nishanth and Ott, Jörg},
  booktitle={Proceedings of the 23rd ACM Workshop on Hot Topics in Networks},
  year={2024}
}
```

## 💾 Dataset

The data necessary for the plots needs to be downloaded before starting and is available at [mediaTUM](https://mediatum.ub.tum.de/1756495) with instructions on how to set it up. 

## Pre-requisites
The associated code has been developed and tested with python version 3.10. This might work with other versions as well, but it will be a good idea to install python3.10 prior to running the below commands, as some of the packages and their dependencies only work properly with this version.

## 📊 Reproducibility Instructions
All plots were created with Python3.10. We recommend following our instructions to create a virtual Python environment with the package versions that we used.

```
git clone https://github.com/boserohan/starlink-cdn-analysis.git
cd starlink-cdn-analysis
python3.10 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

The dataset contains both raw data and processed artifacts. To download the data required for plotting, you may use the following command. Please look up the password for rsync access at [mediaTUM](https://mediatum.ub.tum.de/1756495) and add it to the file ```extract_data.sh``` for:

```sh
export RSYNC_PASSWORD="TODO: get from mediaTUM"
```

Then run the following commands from inside the ```starlink-cdn-analysis``` directory
``` sh
chmod +x extract_data.sh
chmod +x generate_all_plots.sh
./extract_data.sh
./generate_all_plots.sh
```
