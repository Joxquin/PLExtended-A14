package Y1;

import android.content.ContentProvider;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.util.concurrent.Future;
/* renamed from: Y1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ContentProvider$PipeDataWriterC0145a implements ContentProvider.PipeDataWriter {
    @Override // android.content.ContentProvider.PipeDataWriter
    public final void writeDataToPipe(ParcelFileDescriptor parcelFileDescriptor, Uri uri, String str, Bundle bundle, Object obj) {
        Future future = (Future) obj;
        try {
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
            ((Bitmap) future.get()).compress(Bitmap.CompressFormat.PNG, 100, autoCloseOutputStream);
            autoCloseOutputStream.close();
        } catch (Exception e4) {
            Log.w("AppSearchProvider", "fail to write to pipe", e4);
        }
    }
}
