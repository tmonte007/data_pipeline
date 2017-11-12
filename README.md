## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
	- [Generator](#generator)
- [Badge](#badge)
- [Related Efforts](#related-efforts)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)

## Background
This is an apache spark example on EC2.

## Install
The code is written with java 8 and Maven on Ubuntu 16.04.  I used the references below to build out my Apache Spark cluster.<br />
http://www.datumly.com/2017/08/apache-spark-2-2-in-a-virtual-machine-simple-getting-started-guide-to-run-spark-on-your-laptop/<br />
https://www.vultr.com/docs/how-to-install-apache-maven-on-ubuntu-16-04<br />
https://medium.com/@josemarcialportilla/installing-scala-and-spark-on-ubuntu-5665ee4b62b1<br />
https://spark.apache.org/docs/latest/spark-standalone.html#installing-spark-standalone-to-a-cluster<br />

## Usage
Apache Spark 2.2 and scala's sbt build tool do not appear to be compatible.<br />

tmonte@sparkmaster:~/log_analyzer/reference-apps/logs_analyzer/app/scala$ sbt assembly<br />
/usr/share/sbt/bin/sbt-launch-lib.bash: line 207: bc: command not found<br />

The java installation you have is not up to date<br />
requires at least version 1.6+, you have<br />
version 1.8<br />

I might use scala or python. I am not sure yet.<br />
sudo apt-get install python<br />
sudo pip install pyspark<br />
sudo apt-get install scala<br />
sudo apt-get install sbt<br />

### Generator

To use the generator, look at [generator-standard-readme](https://github.com/RichardLitt/generator-standard-readme). There is a global executable to run the generator in that package, aliased as `standard-readme`.

## Badge

If your README is compliant with Standard-Readme and you're on GitHub, it would be great if you could add the badge. This allows people to link back to this Spec, and helps adoption of the README. The badge is **not required**.

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

To add in Markdown format, use this code:

```
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
```

## Related Efforts

## Maintainers

[@tmontetweets](https://github.com/tmonte007).

## Contribute
Feel free to contribute

## License

[MIT](LICENSE) © Tom Monte
