package f1;

import android.graphics.Bitmap;
import com.android.launcher3.widget.WidgetCell;
import java.util.function.Consumer;
/* renamed from: f1.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0857g implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ WidgetCell f9314a;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9314a.applyPreview((Bitmap) obj);
    }
}
