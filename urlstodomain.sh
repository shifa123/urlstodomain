#!/bin/bash

# Proto
sed -r 's#https?://##I' |

# Paths
sed -r 's#/.*##' |

# Wildcards
sed -r 's#^\*\.?##' |

# Multiples
sed -r 's#,#\n#g' |

# Casing
tr '[:upper:]' '[:lower:]' | 

#sort uniq
sort -u 
