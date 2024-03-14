package quality.ui.doodles.tools.crushinator;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum Crushinator$StartOn implements L {
    DEFAULT(0),
    HOME(1);
    
    private final int value;

    Crushinator$StartOn(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
