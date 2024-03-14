package com.airbnb.lottie.network;
/* loaded from: classes.dex */
public enum FileExtension {
    f4369d(".json"),
    f4370e(".zip");
    
    public final String extension;

    FileExtension(String str) {
        this.extension = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.extension;
    }
}
