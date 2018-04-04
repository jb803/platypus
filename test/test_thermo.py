import pytest
import sys
import os

def test_ceaExists():
    #We test that the environment variable key exists
    assert os.environ.get('CEA_DIR') != None
    
    cea = os.path.join(os.environ.get('CEA_DIR'),'cea')
    
    assert os.path.exists(cea)
    