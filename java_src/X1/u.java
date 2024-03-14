package X1;

import L1.A0;
import L1.B;
import L1.C0046a0;
import L1.C0060o;
import L1.C0062q;
import L1.C0067w;
import L1.f0;
import L1.w0;
import L1.x0;
import L1.y0;
import android.app.assist.AssistContent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ViewCache;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.util.AssistContentRequester;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$OverviewFeedback$OverviewInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import com.google.android.apps.nexuslauncher.quickstep.TaskOverlayFactoryImpl;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class u extends TaskOverlayFactory.TaskOverlay implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: A */
    public final /* synthetic */ TaskOverlayFactoryImpl f2065A;

    /* renamed from: d */
    public final Context f2066d;

    /* renamed from: e */
    public final PointF f2067e;

    /* renamed from: f */
    public final ViewCache f2068f;

    /* renamed from: g */
    public S1.a f2069g;

    /* renamed from: h */
    public com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b f2070h;

    /* renamed from: i */
    public ActionMode f2071i;

    /* renamed from: j */
    public int f2072j;

    /* renamed from: k */
    public long f2073k;

    /* renamed from: l */
    public final i f2074l;

    /* renamed from: m */
    public final StatsLogManager f2075m;

    /* renamed from: n */
    public final V1.u f2076n;

    /* renamed from: o */
    public final BaseDraggingActivity f2077o;

    /* renamed from: p */
    public V1.j f2078p;

    /* renamed from: q */
    public t f2079q;

    /* renamed from: r */
    public final V1.k f2080r;

    /* renamed from: s */
    public final AssistContentRequester f2081s;

    /* renamed from: t */
    public boolean f2082t;

    /* renamed from: u */
    public boolean f2083u;

    /* renamed from: v */
    public V1.l f2084v;

    /* renamed from: w */
    public int f2085w;

    /* renamed from: x */
    public boolean f2086x;

    /* renamed from: y */
    public CompletableFuture f2087y;

    /* renamed from: z */
    public float f2088z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(TaskOverlayFactoryImpl taskOverlayFactoryImpl, TaskThumbnailView taskThumbnailView) {
        super(taskThumbnailView);
        this.f2065A = taskOverlayFactoryImpl;
        this.f2067e = new PointF();
        this.f2072j = 0;
        this.f2074l = new i(this, 0);
        this.f2087y = CompletableFuture.completedFuture(Boolean.FALSE);
        Context context = taskThumbnailView.getContext();
        this.f2066d = context;
        this.mThumbnailView.addOnAttachStateChangeListener(this);
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        this.f2077o = baseDraggingActivity;
        this.f2068f = baseDraggingActivity.getViewCache();
        StatsLogManager statsLogManager = baseDraggingActivity.getStatsLogManager();
        this.f2075m = statsLogManager;
        this.f2076n = new V1.u(statsLogManager);
        this.f2080r = new V1.k(this.mApplicationContext);
        this.f2081s = new AssistContentRequester(this.mApplicationContext);
    }

    public static void d(u uVar) {
        FrameLayout frameLayout;
        if (uVar.f2070h == null) {
            return;
        }
        if (uVar.f2072j == 1) {
            uVar.endLiveTileMode(new i(uVar, 1));
        }
        if (uVar.f2072j != 2 || (frameLayout = uVar.f2070h.f6444b) == null || frameLayout.getParent() == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) uVar.f2070h.f6444b.getParent();
        viewGroup.performHapticFeedback(0);
        uVar.f2070h.b(false, false);
        viewGroup.getParent().requestDisallowInterceptTouchEvent(true);
        uVar.f2072j = 3;
        BaseActivity.fromContext(uVar.mThumbnailView.getContext()).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_PREVIEW_LONGPRESS);
    }

    public static Boolean e(u uVar, UserHandle userHandle) {
        Bundle userRestrictions;
        Context context = uVar.mApplicationContext;
        int i4 = TaskOverlayFactoryImpl.f7544i;
        UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
        return Boolean.valueOf(!((userManager == null || (userRestrictions = userManager.getUserRestrictions(userHandle)) == null) ? true : !userRestrictions.getBoolean("no_cross_profile_copy_paste")));
    }

    public static void f(u uVar, com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar) {
        uVar.l();
        uVar.f2070h = bVar;
        bVar.f6460r.f1208b.f1235i = uVar;
        bVar.f6466x = uVar;
        float taskCornerRadius = uVar.mThumbnailView.getTaskView().getTaskCornerRadius();
        bVar.f6467y = taskCornerRadius;
        B b4 = bVar.f6461s;
        if (b4 != null) {
            b4.f1051l = taskCornerRadius;
        }
        uVar.f2070h.f6444b.setLayoutDirection(0);
        ((ViewGroup) uVar.mThumbnailView.getParent()).setOnTouchListener(uVar);
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public final SystemShortcut getModalStateSystemShortcut(WorkspaceItemInfo workspaceItemInfo, View view) {
        t tVar = this.f2079q;
        if (tVar != null) {
            return new q(tVar, com.google.android.apps.nexuslauncher.c.f7313b.get() ? R.drawable.ic_assistant_search : R.drawable.ic_select, R.string.action_select, tVar.f2064b.f2077o, workspaceItemInfo, view, 0);
        }
        return null;
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public final SystemShortcut getScreenshotShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
        t tVar = this.f2079q;
        if (tVar != null) {
            return new q(tVar, R.drawable.ic_screenshot, R.string.action_screenshot, tVar.f2064b.f2077o, itemInfo, view, 1);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0154, code lost:
        if ((((com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView) r3.f1835n.f2064b.getActionsView()).getActionsButtonVisibility() == 0) == false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x028d  */
    /* JADX WARN: Type inference failed for: r8v1, types: [X1.k] */
    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initOverlay(com.android.systemui.shared.recents.model.Task r32, com.android.systemui.shared.recents.model.ThumbnailData r33, android.graphics.Matrix r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: X1.u.initOverlay(com.android.systemui.shared.recents.model.Task, com.android.systemui.shared.recents.model.ThumbnailData, android.graphics.Matrix, boolean):void");
    }

    public final void k() {
        FrameLayout frameLayout;
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = this.f2070h;
        if (bVar == null || (frameLayout = bVar.f6444b) == null || frameLayout.getParent() != null) {
            return;
        }
        CompletableFuture completableFuture = this.f2087y;
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = this.f2070h;
        Objects.requireNonNull(bVar2);
        completableFuture.thenAcceptAsync((Consumer) new m(1, bVar2), (Executor) Executors.MAIN_EXECUTOR);
        ViewGroup viewGroup = (ViewGroup) this.mThumbnailView.getParent();
        viewGroup.addView(this.f2070h.f6444b, viewGroup.indexOfChild(this.mThumbnailView) + 1, this.mThumbnailView.getLayoutParams());
    }

    public final void l() {
        final FrameLayout frameLayout;
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = this.f2070h;
        if (bVar == null || (frameLayout = bVar.f6444b) == null) {
            return;
        }
        bVar.a();
        C0067w c0067w = this.f2070h.f6442A;
        if (c0067w != null) {
            c0067w.f1268b.removeAllViews();
            c0067w.f1290x = null;
        }
        final ViewGroup viewGroup = (ViewGroup) frameLayout.getParent();
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(null);
            frameLayout.setVisibility(4);
            this.f2065A.f7546e.post(new Runnable() { // from class: X1.n
                @Override // java.lang.Runnable
                public final void run() {
                    u uVar = u.this;
                    ViewGroup viewGroup2 = viewGroup;
                    View view = frameLayout;
                    uVar.getClass();
                    viewGroup2.removeViewInLayout(view);
                    view.setVisibility(0);
                    uVar.f2068f.recycleView(view, R.layout.suggest_view);
                }
            });
        } else {
            this.f2068f.recycleView(frameLayout, R.layout.suggest_view);
        }
        this.f2070h = null;
        this.f2082t = false;
    }

    public final void m(C0062q c0062q) {
        ActionMode actionMode = this.f2071i;
        if (actionMode != null) {
            actionMode.finish();
            this.f2071i = null;
        }
        if (this.f2070h != null) {
            this.f2071i = this.mThumbnailView.startActionMode(new p(this, c0062q, this), 1);
        }
    }

    public final void n() {
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar;
        TaskView taskView = this.mThumbnailView.getTaskView();
        boolean z4 = taskView != null && taskView.containsMultipleTasks();
        if (this.f2082t || this.f2084v == null || (bVar = this.f2070h) == null || this.f2079q == null || z4) {
            return;
        }
        if (bVar != null) {
            bVar.a();
            C0067w c0067w = this.f2070h.f6442A;
            if (c0067w != null) {
                c0067w.f1268b.removeAllViews();
                c0067w.f1290x = null;
            }
        }
        this.f2082t = false;
        TypedArray obtainStyledAttributes = this.f2066d.obtainStyledAttributes(new int[]{17956911, 16843827, 17957029, 17957012});
        try {
            int color = obtainStyledAttributes.getColor(2, obtainStyledAttributes.getColor(0, 0));
            int color2 = obtainStyledAttributes.getColor(3, obtainStyledAttributes.getColor(1, 0));
            obtainStyledAttributes.close();
            final com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = this.f2070h;
            t tVar = this.f2079q;
            tVar.getClass();
            s sVar = new s(tVar);
            int width = this.mThumbnailView.getWidth();
            int height = this.mThumbnailView.getHeight();
            bVar2.getClass();
            M1.b.f("Requesting to show indicators");
            C0060o c0060o = bVar2.f6460r;
            int i4 = c0060o.f1213g + 1;
            c0060o.f1213g = i4;
            J1.t c4 = bVar2.c(SuggestParcelables$InteractionType.OVERVIEW_SHARING, null);
            String str = bVar2.f6459q.f1189a;
            ArrayList arrayList = new ArrayList();
            J1.m mVar = new J1.m();
            arrayList.add(mVar);
            mVar.f759b = SystemClock.elapsedRealtime();
            J1.o oVar = new J1.o();
            mVar.f758a = oVar;
            oVar.f764a = FeedbackParcelables$OverviewFeedback$OverviewInteraction.OVERVIEW_SCREEN_STARTED;
            oVar.f765b = 2;
            J1.n nVar = new J1.n();
            nVar.f762b = 0;
            nVar.f763c = str;
            int i5 = M1.c.f1362a;
            nVar.f761a = arrayList;
            C0046a0 c0046a0 = bVar2.f6450h;
            String str2 = bVar2.f6451i;
            K1.a aVar = bVar2.f6452j;
            c0046a0.i(str2, aVar, nVar);
            C0067w c0067w2 = bVar2.f6442A;
            if (c0067w2 != null) {
                c0067w2.f1268b.removeAllViews();
                c0067w2.f1290x = null;
            }
            final C0067w e4 = bVar2.e();
            e4.f1277k = sVar;
            e4.f1279m = bVar2.f6467y;
            e4.f1286t = color;
            e4.f1287u = color2;
            e4.f1288v = width;
            e4.f1289w = height;
            bVar2.f6447e.setOnDragListener(new View.OnDragListener() { // from class: L1.e0
                @Override // android.view.View.OnDragListener
                public final boolean onDrag(View view, DragEvent dragEvent) {
                    com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar3 = com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b.this;
                    C0067w c0067w3 = e4;
                    bVar3.getClass();
                    if (dragEvent.getAction() == 4) {
                        c0067w3.a();
                    } else if (dragEvent.getAction() == 1) {
                        bVar3.f6460r.f1208b.c();
                    }
                    return true;
                }
            });
            c0046a0.k(false);
            c0046a0.g(c4, aVar, new f0(bVar2, i4, 0));
            this.f2082t = true;
            this.f2081s.requestAssistContent(this.f2085w, new AssistContentRequester.Callback() { // from class: X1.o
                @Override // com.android.quickstep.util.AssistContentRequester.Callback
                public final void onAssistContentAvailable(AssistContent assistContent) {
                    C0067w c0067w3;
                    u uVar = u.this;
                    if (uVar.f2086x) {
                        String uri = assistContent.getWebUri() != null ? assistContent.getWebUri().toString() : null;
                        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar3 = uVar.f2070h;
                        if (bVar3 == null || uVar.f2079q == null || !uVar.f2082t || (c0067w3 = bVar3.f6442A) == null || uri == null) {
                            return;
                        }
                        M1.b.f("Show a URL indicator");
                        u uVar2 = c0067w3.f1267a;
                        if (uVar2 != null && uVar2.f2086x) {
                            uVar2.k();
                        }
                        ViewGroup viewGroup = c0067w3.f1268b;
                        final A0 a02 = new A0(viewGroup.getContext());
                        c0067w3.f1285s = a02;
                        s sVar2 = c0067w3.f1277k;
                        int i6 = c0067w3.f1286t;
                        int i7 = c0067w3.f1287u;
                        a02.f1038j = uri;
                        a02.f1040l = c0067w3;
                        a02.f1033e.setImageTintList(ColorStateList.valueOf(i7));
                        a02.f1033e.setBackgroundTintList(ColorStateList.valueOf(i6));
                        a02.f1034f.setText(uri);
                        a02.f1034f.setTextColor(i7);
                        a02.f1034f.setBackgroundTintList(ColorStateList.valueOf(i6));
                        ImageButton imageButton = a02.f1033e;
                        V1.u uVar3 = c0067w3.f1276j;
                        imageButton.setOnClickListener(new w0(a02, uVar3, sVar2, uri));
                        a02.f1033e.setOnLongClickListener(new x0(a02, sVar2, uri));
                        final int scaledTouchSlop = ViewConfiguration.get(a02.getContext()).getScaledTouchSlop();
                        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: L1.v0
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                A0 a03 = A0.this;
                                int i8 = scaledTouchSlop;
                                a03.getClass();
                                int action = motionEvent.getAction();
                                if (action == 0) {
                                    a03.f1035g = motionEvent.getX();
                                    a03.f1036h = motionEvent.getY();
                                    a03.getParent().requestDisallowInterceptTouchEvent(true);
                                } else if (action != 2) {
                                    a03.getParent().requestDisallowInterceptTouchEvent(false);
                                } else if (a03.f1037i) {
                                    float f4 = i8;
                                    if (Math.abs(a03.f1035g - motionEvent.getX()) > f4 || Math.abs(a03.f1036h - motionEvent.getY()) > f4) {
                                        a03.a();
                                    }
                                }
                                return false;
                            }
                        };
                        a02.f1033e.setOnTouchListener(onTouchListener);
                        a02.f1034f.setOnLongClickListener(new y0(a02));
                        a02.f1034f.setOnTouchListener(onTouchListener);
                        a02.f1033e.setAlpha(0.0f);
                        a02.f1033e.animate().alpha(1.0f).setDuration(133L);
                        if (c0067w3.f1290x == null) {
                            FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
                            c0067w3.f1290x = frameLayout;
                            viewGroup.addView(frameLayout);
                        }
                        c0067w3.f1290x.addView(c0067w3.f1285s);
                        uVar3.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_SHOW_URL_INDICATOR);
                    }
                }
            });
        } catch (Throwable th) {
            if (obtainStyledAttributes != null) {
                try {
                    obtainStyledAttributes.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final void o(boolean z4) {
        ((RecentsView) this.f2077o.getOverviewPanel()).showForegroundScrim(z4);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        V1.j jVar;
        if (this.f2070h == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f2065A.f7546e.removeCallbacks(this.f2074l);
            if (this.f2086x) {
                this.f2067e.set(motionEvent.getX() - this.mThumbnailView.getLeft(), motionEvent.getY() - this.mThumbnailView.getTop());
                this.f2073k = SystemClock.elapsedRealtime();
                this.f2072j = 1;
                this.f2065A.f7546e.postDelayed(this.f2074l, ViewConfiguration.getLongPressTimeout() / 2);
            } else {
                this.f2072j = 0;
            }
        }
        if (this.f2072j == 3) {
            motionEvent.setAction(3);
            view.onTouchEvent(motionEvent);
            motionEvent.setAction(action);
            this.f2072j = 4;
        }
        if (this.f2072j != 4 && ((jVar = this.f2078p) == null || !jVar.f1834m)) {
            view.onTouchEvent(motionEvent);
        }
        if (action == 1 || action == 3) {
            if (this.f2072j == 2) {
                this.f2070h.a();
            }
            this.f2072j = 0;
            this.f2065A.f7546e.removeCallbacks(this.f2074l);
        }
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public final void reset() {
        this.f2086x = false;
        V1.j jVar = this.f2078p;
        if (jVar != null) {
            jVar.f1834m = false;
            jVar.f1835n.a(false);
            u uVar = jVar.f1823b;
            com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = uVar.f2070h;
            if (bVar != null) {
                bVar.a();
                C0067w c0067w = uVar.f2070h.f6442A;
                if (c0067w != null) {
                    c0067w.f1268b.removeAllViews();
                    c0067w.f1290x = null;
                }
            }
            uVar.f2082t = false;
        }
        S1.a aVar = this.f2069g;
        if (aVar != null) {
            aVar.f1682b = true;
            this.f2069g = null;
        }
        l();
        V1.l lVar = this.f2084v;
        if (lVar != null) {
            lVar.c();
        }
        o(false);
        this.f2083u = false;
        ((View) this.mThumbnailView.getParent()).setTranslationZ(0.0f);
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public final void resetModalVisuals() {
        V1.j jVar = this.f2078p;
        if (jVar != null) {
            jVar.f1834m = false;
            jVar.f1835n.a(false);
            u uVar = jVar.f1823b;
            com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = uVar.f2070h;
            if (bVar != null) {
                bVar.a();
                C0067w c0067w = uVar.f2070h.f6442A;
                if (c0067w != null) {
                    c0067w.f1268b.removeAllViews();
                    c0067w.f1290x = null;
                }
            }
            uVar.f2082t = false;
        }
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public final void setFullscreenParams(TaskView.FullscreenDrawParams fullscreenDrawParams) {
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = this.f2070h;
        if (bVar != null) {
            float f4 = fullscreenDrawParams.mCurrentDrawnCornerRadius;
            bVar.f6467y = f4;
            B b4 = bVar.f6461s;
            if (b4 != null) {
                b4.f1051l = f4;
            }
        }
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public final void setFullscreenProgress(float f4) {
        this.f2088z = f4;
        if (this.f2070h == null) {
            return;
        }
        this.f2070h.f6444b.setAlpha(Utilities.mapToRange(f4, 0.0f, 0.1f, 1.0f, 0.0f, y0.e.f12949m));
    }
}
