package com.android.launcher3.graphics;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.shapes.PathShape;
/* loaded from: classes.dex */
public final class TriangleShape extends PathShape {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4634d = 0;
    private Path mTriangularPath;

    public TriangleShape(Path path, float f4, float f5) {
        super(path, f4, f5);
        this.mTriangularPath = path;
    }

    @Override // android.graphics.drawable.shapes.Shape
    public final void getOutline(Outline outline) {
        outline.setConvexPath(this.mTriangularPath);
    }
}
