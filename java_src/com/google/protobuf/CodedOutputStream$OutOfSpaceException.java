package com.google.protobuf;

import java.io.IOException;
/* loaded from: classes.dex */
public class CodedOutputStream$OutOfSpaceException extends IOException {
    private static final long serialVersionUID = -6947486886997889499L;

    public CodedOutputStream$OutOfSpaceException(String str) {
        super(androidx.constraintlayout.widget.j.a("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str));
    }

    public CodedOutputStream$OutOfSpaceException(String str, Throwable th) {
        super(androidx.constraintlayout.widget.j.a("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
    }

    public CodedOutputStream$OutOfSpaceException(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
