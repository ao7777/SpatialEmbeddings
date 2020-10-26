from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
import contextlib
import torch
import torch.nn as nn
import torch.nn.init as init
import torch.nn.functional as F

name_scope=""
def scope(name):
    global name_scope
    bk = name_scope
    name_scope = name_scope+name+'/'
    yield
    name_scope = bk
