import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.BridgeLemmas
import LowDimensionalTopologySpecialEFoundationCanonicalLaneLean.GateLemmas

def objectClosed (O : LowDimAdmittedObject) : Prop :=
  O.closedOrientable ∧ O.simpleConnected
