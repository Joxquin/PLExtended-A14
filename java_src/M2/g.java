package M2;

import android.content.res.Resources;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.Log;
import android.util.Size;
import com.google.android.systemui.smartspace.uitemplate.SubImageTemplateCard;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class g extends AsyncTask {
    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        f[] fVarArr = (f[]) objArr;
        Drawable drawable = null;
        if (fVarArr.length > 0) {
            f fVar = fVarArr[0];
            try {
                InputStream openInputStream = fVar.f1374a.openInputStream(fVar.f1375b);
                final int i4 = fVar.f1376c;
                int i5 = SubImageTemplateCard.f8419i;
                try {
                    drawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource((Resources) null, openInputStream), new ImageDecoder.OnHeaderDecodedListener() { // from class: M2.e
                        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                        public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                            int i6 = i4;
                            int i7 = SubImageTemplateCard.f8419i;
                            imageDecoder.setAllocator(3);
                            Size size = imageInfo.getSize();
                            imageDecoder.setTargetSize((int) (i6 * (size.getHeight() != 0 ? size.getWidth() / size.getHeight() : 0.0f)), i6);
                        }
                    });
                } catch (IOException e4) {
                    Log.e("SubImageTemplateCard", "Unable to decode stream: " + e4);
                }
                fVar.f1378e = drawable;
            } catch (Exception e5) {
                Log.w("SubImageTemplateCard", "open uri:" + fVar.f1375b + " got exception:" + e5);
            }
            return fVar;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        f fVar = (f) obj;
        fVar.f1377d.onDrawableLoaded(fVar.f1378e);
    }
}
