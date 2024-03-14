package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.content.Context;
import android.graphics.Point;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import com.android.launcher3.allapps.AllAppsTransitionListener;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView;
import com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class TaskbarToastSessionController extends TaskbarSearchSessionController {

    /* renamed from: d  reason: collision with root package name */
    public final TaskbarOverlayContext f6889d;

    /* renamed from: e  reason: collision with root package name */
    public final L f6890e;

    /* renamed from: f  reason: collision with root package name */
    public final com.google.android.apps.nexuslauncher.logging.b f6891f;

    /* renamed from: g  reason: collision with root package name */
    public final P2 f6892g;

    /* renamed from: h  reason: collision with root package name */
    public O2 f6893h;

    public TaskbarToastSessionController(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        TaskbarOverlayContext taskbarOverlayContext = (TaskbarOverlayContext) ActivityContext.lookupContext(context);
        this.f6889d = taskbarOverlayContext;
        this.f6890e = new L();
        this.f6891f = new com.google.android.apps.nexuslauncher.logging.b(new com.google.android.apps.nexuslauncher.logging.a(context), taskbarOverlayContext.getStatsLogManager().keyboardStateManager());
        this.f6892g = new P2(this, taskbarOverlayContext);
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final DragOptions.PreDragCondition createPreDragConditionForSearch(View view) {
        kotlin.jvm.internal.h.e(view, "view");
        if (view instanceof SearchResultIcon) {
            SearchResultIcon searchResultIcon = (SearchResultIcon) view;
            Point point = searchResultIcon.f6745s;
            if ((point.x == 0 && point.y == 0) ? false : true) {
                return new N2(this.f6889d.getResources().getDimension(R.dimen.deep_shortcuts_start_drag_threshold), searchResultIcon.w(), searchResultIcon.q(), this);
            }
            return null;
        }
        return null;
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final boolean handleBackInvoked() {
        return this.f6892g.s();
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final void onAllAppsAnimationPending(PendingAnimation pendingAnimation, boolean z4) {
        WindowInsetsController windowInsetsController;
        WindowInsetsController windowInsetsController2;
        TaskbarOverlayContext taskbarOverlayContext = this.f6889d;
        WindowInsets rootWindowInsets = taskbarOverlayContext.getDragLayer().getRootWindowInsets();
        boolean isVisible = rootWindowInsets != null ? rootWindowInsets.isVisible(WindowInsets.Type.ime()) : false;
        if (z4 || isVisible) {
            if (!z4 || this.f6892g.m()) {
                F f4 = new F(z4, y0.e.f12941e, this.f6890e, this.f6891f);
                Interpolator b4 = P.b(taskbarOverlayContext, z4, true);
                kotlin.jvm.internal.h.d(b4, "getKeyboardTranslationIn…d= */ true,\n            )");
                pendingAnimation.setFloat(f4.f6549b, AnimatedFloat.VALUE, 1.0f, b4);
                if (this.f6893h != null) {
                    TaskbarAllAppsContainerView appsView = taskbarOverlayContext.getAppsView();
                    if (appsView != null && (windowInsetsController2 = appsView.getWindowInsetsController()) != null) {
                        windowInsetsController2.removeOnControllableInsetsChangedListener(this.f6893h);
                    }
                    this.f6893h = null;
                }
                this.f6893h = new O2(b4, f4, this);
                TaskbarAllAppsContainerView appsView2 = taskbarOverlayContext.getAppsView();
                if (appsView2 != null && (windowInsetsController = appsView2.getWindowInsetsController()) != null) {
                    windowInsetsController.addOnControllableInsetsChangedListener(this.f6893h);
                }
                pendingAnimation.addListener(new E(f4, 0));
            }
        }
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController, com.android.launcher3.allapps.AllAppsTransitionListener
    public final void onAllAppsTransitionEnd(boolean z4) {
        List list = this.f6892g.f7278k;
        kotlin.jvm.internal.h.d(list, "sessionManager.mAllAppsTransitionListeners");
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            ((AllAppsTransitionListener) it.next()).onAllAppsTransitionEnd(z4);
        }
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController, com.android.launcher3.allapps.AllAppsTransitionListener
    public final void onAllAppsTransitionStart(boolean z4) {
        List list = this.f6892g.f7278k;
        kotlin.jvm.internal.h.d(list, "sessionManager.mAllAppsTransitionListeners");
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            ((AllAppsTransitionListener) it.next()).onAllAppsTransitionStart(z4);
        }
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final void onDestroy() {
        this.f6892g.C();
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final void setZeroStatePredictedItems(List items) {
        kotlin.jvm.internal.h.e(items, "items");
        g3 g3Var = this.f6892g.f7284q;
        synchronized (g3Var.f7068f) {
            ((ArrayList) g3Var.f7065c).clear();
            ((ArrayList) g3Var.f7065c).addAll(items);
            g3Var.d();
        }
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final void setZeroStateSearchSuggestions(List items) {
        kotlin.jvm.internal.h.e(items, "items");
        P2 p22 = this.f6892g;
        p22.getClass();
        if (com.google.android.apps.nexuslauncher.c.f7327p.get() && !items.isEmpty() && (items.get(0) instanceof T1.w)) {
            T0 t02 = p22.f7285r;
            Query o4 = p22.o("");
            T1.w wVar = (T1.w) items.get(0);
            g3 g3Var = p22.f7284q;
            t02.getClass();
            t02.b(o4, wVar.f1720d, g3Var, -1L, wVar.f1721e, true);
        }
    }

    @Override // com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController
    public final void startLifecycle() {
        this.f6892g.N();
    }
}
