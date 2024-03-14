package W1;

import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.qsb.SearchDelegateView;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final SearchDelegateView f1901a;

    /* renamed from: b  reason: collision with root package name */
    public final NexusLauncherActivity f1902b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f1903c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f1904d = {0, 0};

    /* renamed from: e  reason: collision with root package name */
    public final Bundle f1905e = new Bundle();

    /* renamed from: f  reason: collision with root package name */
    public final Y1.l f1906f;

    /* renamed from: g  reason: collision with root package name */
    public final String f1907g;

    /* renamed from: h  reason: collision with root package name */
    public BubbleTextView f1908h;

    /* renamed from: i  reason: collision with root package name */
    public int f1909i;

    public l(SearchDelegateView searchDelegateView, boolean z4, String str, SearchConfigProto$TapTarget searchConfigProto$TapTarget) {
        Y1.l B3 = Y1.m.B();
        this.f1906f = B3;
        this.f1901a = searchDelegateView;
        this.f1902b = searchDelegateView.g();
        this.f1903c = z4;
        this.f1907g = str;
        B3.y(searchConfigProto$TapTarget);
    }

    public static Point d(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        Point point = new Point();
        point.x = (view.getWidth() / 2) + (iArr[0] - rect.left);
        point.y = (view.getHeight() / 2) + (iArr[1] - rect.top);
        return point;
    }

    public static Y1.h e(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        Y1.h k4 = Y1.i.k();
        k4.f(iArr[0]);
        k4.g(iArr[1]);
        k4.h(view.getWidth());
        k4.e(view.getHeight());
        return k4;
    }

    public final void a(Canvas canvas, View view) {
        int[] iArr = this.f1904d;
        iArr[1] = 0;
        iArr[0] = 0;
        this.f1902b.getDragLayer().mapCoordInSelfToDescendant(view, iArr);
        canvas.translate(-iArr[0], -iArr[1]);
        view.draw(canvas);
        canvas.translate(iArr[0], iArr[1]);
    }

    public final void b() {
        Y1.l lVar = this.f1906f;
        if (lVar.i()) {
            return;
        }
        Y1.i c4 = lVar.c();
        Y1.h l4 = Y1.i.l(c4);
        l4.g(c4.g() + c4.i());
        lVar.w(l4);
    }

    public final Y1.k c(ItemInfoWithIcon itemInfoWithIcon, int i4) {
        Uri build;
        int i5 = itemInfoWithIcon.itemType;
        if (i5 == 0) {
            build = AppSearchProvider.a(itemInfoWithIcon.getTargetComponent(), itemInfoWithIcon).buildUpon().appendQueryParameter("iconType", "app").build();
        } else if (i5 != 6) {
            return null;
        } else {
            build = AppSearchProvider.a(itemInfoWithIcon.getTargetComponent(), itemInfoWithIcon).buildUpon().appendQueryParameter("iconType", "deepshortcut").appendQueryParameter("deepshortcut_id", ((WorkspaceItemInfo) itemInfoWithIcon).getDeepShortcutId()).build();
        }
        Y1.j g4 = Y1.k.g();
        g4.d(itemInfoWithIcon.title.toString());
        g4.b("icon_bitmap_" + i4);
        g4.e(build.toString());
        g4.c(new Intent("com.google.android.apps.nexuslauncher.search.APP_LAUNCH", build).toUri(0));
        this.f1905e.putParcelable(g4.a(), AppSearchProvider.b(this.f1902b, itemInfoWithIcon));
        return (Y1.k) g4.build();
    }

    public final void f() {
        NexusLauncherActivity nexusLauncherActivity = this.f1902b;
        DeviceProfile deviceProfile = nexusLauncherActivity.getDeviceProfile();
        Y1.l lVar = this.f1906f;
        lVar.o(5);
        Y1.h k4 = Y1.i.k();
        if (deviceProfile.isVerticalBarLayout()) {
            k4.f(g(k4));
        } else {
            int dimensionPixelSize = nexusLauncherActivity.getResources().getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
            k4.f(dimensionPixelSize);
            k4.h((nexusLauncherActivity.getHotseat().getWidth() - dimensionPixelSize) - dimensionPixelSize);
        }
        k4.e(deviceProfile.allAppsCellHeightPx);
        lVar.k(k4);
        b();
        AppInfo[] apps = ((ActivityAllAppsContainerView) nexusLauncherActivity.findViewById(R.id.apps_view)).getAppsStore().getApps();
        int i4 = 0;
        BubbleTextView bubbleTextView = (BubbleTextView) nexusLauncherActivity.getLayoutInflater().inflate(R.layout.all_apps_icon, (ViewGroup) ((ActivityAllAppsContainerView) nexusLauncherActivity.findViewById(R.id.apps_view)).getActiveRecyclerView(), false);
        this.f1908h = bubbleTextView;
        ViewGroup.LayoutParams layoutParams = bubbleTextView.getLayoutParams();
        layoutParams.height = k4.a();
        layoutParams.width = k4.d() / lVar.e();
        if (apps.length > 0) {
            this.f1908h.applyFromApplicationInfo(apps[0]);
        }
        this.f1908h.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(layoutParams.height, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        this.f1908h.layout(0, 0, layoutParams.width, layoutParams.height);
        Iterator it = ((ArrayList) ((PredictionRowView) ((ActivityAllAppsContainerView) nexusLauncherActivity.findViewById(R.id.apps_view)).getFloatingHeaderView().findFixedRowByType(PredictionRowView.class)).getPredictedApps()).iterator();
        while (it.hasNext()) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) it.next();
            Y1.k c4 = c(itemInfoWithIcon, i4);
            if (c4 != null && !itemInfoWithIcon.usingLowResIcon()) {
                lVar.a(c4);
                i4++;
            }
            if (i4 >= lVar.e()) {
                return;
            }
        }
    }

    public final int g(Y1.h hVar) {
        NexusLauncherActivity nexusLauncherActivity = this.f1902b;
        DeviceProfile deviceProfile = nexusLauncherActivity.getDeviceProfile();
        int i4 = deviceProfile.desiredWorkspaceHorizontalMarginPx;
        Rect rect = deviceProfile.cellLayoutPaddingPx;
        int i5 = rect.left + i4;
        int i6 = i4 + rect.right;
        Rect insets = deviceProfile.getInsets();
        Rect rect2 = deviceProfile.workspacePadding;
        int i7 = insets.left + i5 + rect2.left;
        hVar.h((((nexusLauncherActivity.getDragLayer().getWidth() - i7) - insets.right) - i6) - rect2.right);
        return i7;
    }
}
