package com.google.android.apps.nexuslauncher.allapps;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.util.Log;
import com.android.launcher3.Utilities;
import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f6508a;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        f6508a = Log.isLoggable("GmsPlay", 2);
    }

    public static byte[] a(Resources resources, byte[] bArr, int i4) {
        F.a aVar = new F.a(resources, BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
        aVar.b(i4);
        Bitmap createBitmap = Bitmap.createBitmap(aVar.f353k, aVar.f354l, aVar.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        aVar.setBounds(0, 0, aVar.f353k, aVar.f354l);
        aVar.draw(canvas);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        createBitmap.recycle();
        return byteArray;
    }
}
