package androidx.slice.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItem;
import d0.C0797e;
import f0.F;
import f0.G;
import f0.M;
import f0.P;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MessageView extends F {

    /* renamed from: p  reason: collision with root package name */
    public TextView f4105p;

    /* renamed from: q  reason: collision with root package name */
    public ImageView f4106q;

    public MessageView(Context context) {
        super(context);
    }

    @Override // f0.F
    public final void c() {
    }

    @Override // f0.F
    public final void n(G g4, boolean z4, int i4, int i5, M m4) {
        IconCompat iconCompat;
        Drawable h4;
        SliceItem sliceItem = g4.f9085a;
        this.f9073d = m4;
        SliceItem i6 = C0797e.i(sliceItem, "image", "source");
        if (i6 != null && (iconCompat = (IconCompat) i6.f4059d) != null && (h4 = iconCompat.h(getContext())) != null) {
            int applyDimension = (int) TypedValue.applyDimension(1, 24.0f, getContext().getResources().getDisplayMetrics());
            Bitmap createBitmap = Bitmap.createBitmap(applyDimension, applyDimension, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            h4.setBounds(0, 0, applyDimension, applyDimension);
            h4.draw(canvas);
            this.f4106q.setImageBitmap(P.a(createBitmap));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Iterator it = ((ArrayList) C0797e.f(sliceItem, "text", null, null)).iterator();
        while (it.hasNext()) {
            SliceItem sliceItem2 = (SliceItem) it.next();
            if (spannableStringBuilder.length() != 0) {
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(sliceItem2.f());
        }
        this.f4105p.setText(spannableStringBuilder.toString());
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f4105p = (TextView) findViewById(16908304);
        this.f4106q = (ImageView) findViewById(16908294);
    }
}
