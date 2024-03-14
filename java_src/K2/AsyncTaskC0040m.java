package K2;

import android.content.res.Resources;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.util.Size;
import android.view.View;
import android.widget.ImageView;
import com.google.android.systemui.smartspace.BcSmartspaceCardDoorbell;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
/* renamed from: K2.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AsyncTaskC0040m extends AsyncTask {

    /* renamed from: a  reason: collision with root package name */
    public final C0039l f997a;

    public AsyncTaskC0040m(C0039l c0039l) {
        this.f997a = c0039l;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        C0038k[] c0038kArr = (C0038k[]) objArr;
        Drawable drawable = null;
        if (c0038kArr.length > 0) {
            C0038k c0038k = c0038kArr[0];
            try {
                InputStream openInputStream = c0038k.f989d.openInputStream(c0038k.f990e);
                final int i4 = c0038k.f992g;
                int i5 = BcSmartspaceCardDoorbell.f8294m;
                try {
                    drawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource((Resources) null, openInputStream), new ImageDecoder.OnHeaderDecodedListener() { // from class: K2.j
                        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                        public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                            int i6 = i4;
                            int i7 = BcSmartspaceCardDoorbell.f8294m;
                            imageDecoder.setAllocator(3);
                            Size size = imageInfo.getSize();
                            imageDecoder.setTargetSize((int) (i6 * (size.getHeight() != 0 ? size.getWidth() / size.getHeight() : 0.0f)), i6);
                        }
                    });
                } catch (IOException e4) {
                    Log.e("BcSmartspaceCardBell", "Unable to decode stream: " + e4);
                }
                c0038k.f991f = drawable;
            } catch (Exception e5) {
                Log.w("BcSmartspaceCardBell", "open uri:" + c0038k.f990e + " got exception:" + e5);
            }
            return c0038k;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.f997a.a();
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        C0038k c0038k = (C0038k) obj;
        if (c0038k == null) {
            return;
        }
        Drawable drawable = c0038k.f991f;
        if (drawable != null) {
            c0038k.setDrawable(drawable);
            ImageView imageView = (ImageView) c0038k.f993h.get();
            int intrinsicWidth = c0038k.f991f.getIntrinsicWidth();
            if (imageView.getLayoutParams().width != intrinsicWidth) {
                Log.d("BcSmartspaceCardBell", "imageView requestLayout " + c0038k.f990e);
                imageView.getLayoutParams().width = intrinsicWidth;
                imageView.requestLayout();
            }
            C0039l c0039l = this.f997a;
            Uri uri = c0038k.f990e;
            HashSet hashSet = (HashSet) c0039l.f995a;
            if (!hashSet.isEmpty()) {
                if (uri == null || !hashSet.remove(uri)) {
                    c0039l.a();
                } else if (hashSet.isEmpty()) {
                    c0039l.f996b.onActionEnd(22);
                }
            }
        } else {
            t.f((ImageView) c0038k.f993h.get(), 8);
            this.f997a.a();
        }
        t.f((View) c0038k.f994i.get(), 8);
    }
}
