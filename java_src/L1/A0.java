package L1;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.view.ActionMode;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class A0 extends LinearLayout {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f1031m = 0;

    /* renamed from: d  reason: collision with root package name */
    public final Context f1032d;

    /* renamed from: e  reason: collision with root package name */
    public final ImageButton f1033e;

    /* renamed from: f  reason: collision with root package name */
    public final TextView f1034f;

    /* renamed from: g  reason: collision with root package name */
    public float f1035g;

    /* renamed from: h  reason: collision with root package name */
    public float f1036h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1037i;

    /* renamed from: j  reason: collision with root package name */
    public String f1038j;

    /* renamed from: k  reason: collision with root package name */
    public ActionMode f1039k;

    /* renamed from: l  reason: collision with root package name */
    public C0067w f1040l;

    public A0(Context context) {
        super(context, null, 0, 0);
        this.f1037i = false;
        this.f1032d = context;
        LinearLayout linearLayout = (LinearLayout) LinearLayout.inflate(context, R.layout.url_container, this);
        this.f1034f = (TextView) linearLayout.findViewById(R.id.url_text);
        this.f1033e = (ImageButton) linearLayout.findViewById(R.id.url_indicator);
    }

    public final void a() {
        View.DragShadowBuilder dragShadowBuilder = new View.DragShadowBuilder(this.f1033e);
        this.f1033e.startDrag(new ClipData(new ClipDescription("dragToShareUrl", new String[]{"text/plain"}), new ClipData.Item(this.f1038j)), dragShadowBuilder, null, 0);
        ActionMode actionMode = this.f1039k;
        if (actionMode != null) {
            actionMode.finish();
            this.f1039k = null;
        }
        FrameLayout frameLayout = this.f1040l.f1290x;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        this.f1037i = false;
    }

    public final void b(boolean z4) {
        ActionMode actionMode;
        this.f1034f.setVisibility(z4 ? 0 : 4);
        this.f1034f.sendAccessibilityEvent(8);
        this.f1033e.setVisibility(z4 ? 8 : 0);
        this.f1037i = z4;
        if (z4 || (actionMode = this.f1039k) == null) {
            return;
        }
        actionMode.finish();
        this.f1039k = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMode actionMode = this.f1039k;
        if (actionMode != null) {
            actionMode.finish();
            this.f1039k = null;
        }
    }
}
