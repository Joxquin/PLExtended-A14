package X1;

import L1.C0062q;
import L1.C0067w;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.android.launcher3.BaseDraggingActivity;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class p extends ActionMode.Callback2 {

    /* renamed from: a  reason: collision with root package name */
    public final C0062q f2054a;

    /* renamed from: b  reason: collision with root package name */
    public final u f2055b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ u f2056c;

    public p(u uVar, C0062q c0062q, u uVar2) {
        this.f2056c = uVar;
        this.f2054a = c0062q;
        this.f2055b = uVar2;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        C0067w c0067w;
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = this.f2056c.f2079q.f2064b.f2070h;
        if (bVar != null && (c0067w = bVar.f6442A) != null) {
            c0067w.a();
        }
        return this.f2054a.f(menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.setTitle((CharSequence) null);
        actionMode.setSubtitle((CharSequence) null);
        actionMode.setTitleOptionalHint(true);
        C0062q c0062q = this.f2054a;
        c0062q.a(null, menu, c0062q.f1236j);
        actionMode.setTag(BaseDraggingActivity.AUTO_CANCEL_ACTION_MODE);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        this.f2055b.f2071i = null;
    }

    @Override // android.view.ActionMode.Callback2
    public final void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
        C0062q c0062q = this.f2054a;
        if (c0062q.f1234h != null && c0062q.f1235i != null) {
            RectF rectF = c0062q.f1229c;
            rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        }
        Resources resources = this.f2056c.f2066d.getResources();
        rect.offset(-resources.getDimensionPixelSize(R.dimen.suggest_menu_margin_left), -resources.getDimensionPixelSize(R.dimen.suggest_menu_margin_top));
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}
