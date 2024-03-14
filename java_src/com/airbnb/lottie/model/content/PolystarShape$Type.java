package com.airbnb.lottie.model.content;
/* loaded from: classes.dex */
public enum PolystarShape$Type {
    STAR(1),
    /* JADX INFO: Fake field, exist only in values array */
    POLYGON(2);
    
    private final int value;

    PolystarShape$Type(int i4) {
        this.value = i4;
    }

    public static PolystarShape$Type a(int i4) {
        PolystarShape$Type[] values;
        for (PolystarShape$Type polystarShape$Type : values()) {
            if (polystarShape$Type.value == i4) {
                return polystarShape$Type;
            }
        }
        return null;
    }
}
