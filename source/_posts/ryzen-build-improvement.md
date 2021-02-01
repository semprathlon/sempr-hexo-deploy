---
title: ryzen-build-improvement
abbrlink: '735e7650'
date: 2020-08-15 17:15:03
tags:
---

### Proposal 1: A NAS build is not exactly NAS-compliant

`Athlon 200GE` doesn't support ECC, though literally all Ryzen CPUs do.

`B450` supports ECC with some limitations, accordint to the [example user manual](https://download.asrock.com/Manual/Fatal1ty%20B450%20Gaming-ITXac.pdf):
> * AMD Ryzen series CPUs (Pinnacle Ridge) support DDR4 3466+(OC)/3200(OC)/2933/2667/2400/2133 ECC & nonECC, un-buffered memory*
> * AMD Ryzen series CPUs (Summit Ridge) support DDR4 3466+(OC)/3200(OC)/2933(OC)/2667/2400/2133 ECC & non-ECC, un-buffered memory*
> * AMD Ryzen series CPUs (Raven Ridge) support DDR4 3466+(OC)/3200(OC)/2933(OC)/2667/2400/2133 non-ECC, un-buffered memory*
> * For Ryzen Series CPUs (Raven Ridge), ECC is only supported with PRO CPUs.

Part of [CPU Support List](https://www.asrock.com/mb/AMD/Fatal1ty%20B450%20Gaming-ITXac/index.us.asp#CPU):

|Socket|Family|Model|
|---|---|---|
|AM4	|Ryzen 3	|PRO 3200G (YD320BC5M4MFH)	65W	Picasso	3.6GHz	2MB	B1	P3.30|
|AM4	|Ryzen 3	|PRO 3200GE (YD320BC6M4MFH)	35W	Picasso	3.3GHz	2MB	B1	P3.30|
|AM4	|Ryzen 3	|3200G (YD3200C5M4MFH)	65W	Picasso	3.6GHz	2MB	B1	P3.30|
|AM4	|Ryzen 3	|3200GE (YD3200C6M4MFH)	35W	Picasso	3.3GHz	2MB	B1	P3.30|
|...|...|...|
|AM4	|Ryzen 3	|PRO 2200G (YD220BC5M4MFB)	65W	Raven Ridge	3.5GHz	2MB	B0	All|
|AM4	|Ryzen 3	|PRO 2200GE (YD220BC6M4MFB)	35W	Raven Ridge	3.2GHz	2MB	B0	All|
|AM4	|Ryzen 3	|2200G (YD2200C5M4MFB)	65W	Raven Ridge	3.5GHz	2MB	B0	All|
|AM4	|Ryzen 3	|2200GE (YD2200C6M4MFB)	35W	Raven Ridge	3.2GHz	2MB	B0	All|
|AM4	|Ryzen 3	|PRO 1300 (YD130BBBM4KAE)	65W	Summit Ridge	3.4GHz	2MB	B1	All|
|...|...|...|
|AM4	|Athlon	|3000G (YD3000C6M2OFH)	35W	Picasso	3.5GHz	1MB	B1	P3.50|
|...|...|...|
|AM4	|Athlon	|Athlon PRO 200GE (YD200BC6M2OFB)	35W	Raven Ridge	3.2GHz	1MB	B0	All|
|AM4	|Athlon	|Athlon 200GE (YD200GC6M2OFB)	35W	Raven Ridge	3.2GHz	1MB	B0	All|

To support ECC and avoid the use of a dedicated GPU at the same time, `PRO 2200G/GE` is proposed as the lowest-end eligible CPU for refreshed NAS build.

SSD cache is **optional** for RAM less than 32GB.

Cheap refurbished NICs can be actually kinda model many years ago. 40mm quiet cooling fan replacement needed.

### Proposal 2: MSI RMA request

Exchange done.

### Proposal 3: Ultimate casual video editing rig, unlimited budget

Wait for annual refresh of `Threadripper`. `TRX40` should continue to receive support.

1200W PSU for dual-GPU. ASUS ROG PSU can be installed upside-down.

Build samples:
- [TensorBook](https://lambdalabs.com/deep-learning/laptops/tensorbook)
- [Deep Learning Workstation](https://www.sabrepc.com/Deep-Learning-2x-GPU-Workstations)