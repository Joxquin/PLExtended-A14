package Y1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.LineBackgroundSpan;
import com.google.android.apps.nexuslauncher.search.TypeAheadSearchInputView;
/* loaded from: classes.dex */
public final class B implements LineBackgroundSpan {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f2275a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f2276b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TypeAheadSearchInputView f2277c;

    public B(TypeAheadSearchInputView typeAheadSearchInputView, String str, String str2) {
        this.f2277c = typeAheadSearchInputView;
        this.f2275a = str;
        this.f2276b = str2;
    }

    @Override // android.text.style.LineBackgroundSpan
    public final void drawBackground(Canvas canvas, Paint paint, int i4, int i5, int i6, int i7, int i8, CharSequence charSequence, int i9, int i10, int i11) {
        int length = this.f2275a.length();
        int length2 = this.f2276b.length();
        if (length >= length2) {
            return;
        }
        int color = paint.getColor();
        paint.setColor(this.f2277c.f7595m.getHighlightColor());
        float measureText = paint.measureText(charSequence, 0, length);
        canvas.drawRect(measureText, i6, paint.measureText(charSequence, length, length2) + measureText, i8, paint);
        paint.setColor(color);
    }
}
