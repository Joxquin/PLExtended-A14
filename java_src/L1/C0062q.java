package L1;

import J1.C0022e;
import J1.C0026i;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.MenuItem;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.RunnableList;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionFeedback$ActionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: L1.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0062q {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1227a;

    /* renamed from: b  reason: collision with root package name */
    public final com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b f1228b;

    /* renamed from: c  reason: collision with root package name */
    public final RectF f1229c = new RectF();

    /* renamed from: d  reason: collision with root package name */
    public final X1.f f1230d;

    /* renamed from: e  reason: collision with root package name */
    public final K1.a f1231e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f1232f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1233g;

    /* renamed from: h  reason: collision with root package name */
    public J1.B f1234h;

    /* renamed from: i  reason: collision with root package name */
    public X1.u f1235i;

    /* renamed from: j  reason: collision with root package name */
    public C0060o f1236j;

    public C0062q(Context context, Context context2, com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar, X1.f fVar, K1.a aVar) {
        this.f1227a = context;
        this.f1232f = context2;
        this.f1228b = bVar;
        this.f1230d = fVar;
        this.f1231e = aVar;
    }

    public static boolean d(J1.F f4) {
        if (f4 == null) {
            return true;
        }
        if (TextUtils.isEmpty(f4.f683d) && TextUtils.isEmpty(f4.f681b) && TextUtils.isEmpty(f4.f682c) && TextUtils.isEmpty(f4.f684e) && TextUtils.isEmpty(f4.f685f) && f4.f686g == 0) {
            List list = f4.f680a;
            int i4 = M1.c.f1362a;
            list.getClass();
            if (((ArrayList) list).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006f, code lost:
        if (r9.f1233g == false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.view.ActionMode r10, android.view.Menu r11, L1.C0060o r12) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: L1.C0062q.a(android.view.ActionMode, android.view.Menu, L1.o):void");
    }

    public final void b(J1.x xVar, MenuItem menuItem, C0060o c0060o) {
        J1.w wVar;
        Bitmap bitmap;
        if (c0060o == null || (wVar = xVar.f833c) == null) {
            return;
        }
        int i4 = M1.c.f1362a;
        if (TextUtils.isEmpty(wVar.f823a)) {
            return;
        }
        J1.w wVar2 = xVar.f833c;
        wVar2.getClass();
        String str = wVar2.f823a;
        str.getClass();
        EntitiesData entitiesData = c0060o.f1218l;
        if (entitiesData == null) {
            M1.b.d("Unable to find icon for ".concat(str), new Throwable());
            bitmap = null;
        } else {
            bitmap = entitiesData.getBitmap(str);
        }
        if (bitmap != null) {
            menuItem.setIcon(new BitmapDrawable(this.f1227a.getResources(), bitmap));
            M1.b.c("Setting icon for " + xVar.f832b);
        }
    }

    public final void c() {
        X1.u uVar = this.f1235i;
        if (uVar != null) {
            ActionMode actionMode = uVar.f2071i;
            if (actionMode != null) {
                actionMode.finish();
                uVar.f2071i = null;
            }
            J1.B b4 = this.f1234h;
            if (b4 == null) {
                return;
            }
            int i4 = M1.c.f1362a;
            if (b4.f654b == null) {
                return;
            }
            b4.getClass();
            List list = b4.f654b;
            list.getClass();
            Iterator it = ((ArrayList) list).iterator();
            while (it.hasNext()) {
                J1.x xVar = (J1.x) it.next();
                if (xVar != null) {
                    xVar.f833c.getClass();
                    this.f1234h.getClass();
                    this.f1228b.getClass();
                }
            }
        }
    }

    public final void e() {
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.LONG_PRESS;
        C0060o c0060o = this.f1236j;
        if (c0060o == null) {
            M1.b.c("onSelectionDismissed logging failed, entitiesModel is null.");
            return;
        }
        int i4 = M1.c.f1362a;
        String concat = (c0060o.k() ? "IMAGE" : "TEXT").concat(" Selection Dismissed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s");
        String h4 = c0060o.h();
        String str = c0060o.f1214h;
        String str2 = c0060o.f1215i;
        String str3 = c0060o.f1211e;
        M1.b.c(String.format(concat, str3, h4, str, str2));
        ArrayList arrayList = new ArrayList();
        String h5 = c0060o.h();
        String str4 = c0060o.f1214h;
        String str5 = c0060o.f1215i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0060o.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        C0022e c0022e = c0060o.f1216j;
        J1.B b4 = this.f1234h;
        J1.m mVar = new J1.m();
        arrayList.add(mVar);
        mVar.f759b = SystemClock.elapsedRealtime();
        J1.r rVar = new J1.r();
        rVar.f779f = str3;
        rVar.f780g = h5;
        rVar.f781h = str4;
        rVar.f782i = str5;
        C0064t.a(b4, rVar);
        mVar.f758a = rVar;
        rVar.f774a = feedbackParcelables$SelectionFeedback$SelectionType;
        rVar.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_DISMISSED;
        if (c0022e != null) {
            rVar.f783j = c0022e;
        }
        if (b4 != null) {
            rVar.f775b = b4;
        }
        rVar.f784k = suggestParcelables$InteractionType;
        J1.n nVar = new J1.n();
        nVar.f762b = 0;
        nVar.f763c = str3;
        nVar.f761a = arrayList;
        j(str3, nVar);
    }

    public final boolean f(MenuItem menuItem) {
        PendingIntent pendingIntent;
        ClipboardManager clipboardManager;
        J1.B b4 = this.f1234h;
        RunnableList runnableList = null;
        if (b4 == null || this.f1236j == null) {
            M1.b.d("Invalid state for menu: no entity", null);
            return false;
        }
        List list = b4.f654b;
        if (list == null) {
            return false;
        }
        int itemId = menuItem.getItemId() - 16908353;
        if (itemId >= 0) {
            ArrayList arrayList = (ArrayList) list;
            if (itemId < arrayList.size()) {
                J1.x xVar = (J1.x) arrayList.get(itemId);
                if (xVar == null) {
                    return false;
                }
                SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.LONG_PRESS;
                C0060o c0060o = this.f1236j;
                if (c0060o == null) {
                    M1.b.c("onSuggestViewActionInvoked logging failed, entitiesModel is null.");
                } else {
                    int i4 = M1.c.f1362a;
                    String concat = (c0060o.k() ? "IMAGE" : "TEXT").concat(" Action Invoked - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s");
                    String h4 = c0060o.h();
                    String str = c0060o.f1214h;
                    String str2 = c0060o.f1215i;
                    String str3 = c0060o.f1211e;
                    M1.b.c(String.format(concat, str3, h4, str, str2));
                    ArrayList arrayList2 = new ArrayList();
                    String h5 = c0060o.h();
                    String str4 = c0060o.f1214h;
                    String str5 = c0060o.f1215i;
                    FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0060o.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                    J1.B b5 = this.f1234h;
                    J1.m mVar = new J1.m();
                    arrayList2.add(mVar);
                    mVar.f759b = SystemClock.elapsedRealtime();
                    C0026i c0026i = new C0026i();
                    c0026i.f745f = str3;
                    c0026i.f746g = h5;
                    c0026i.f747h = str4;
                    c0026i.f748i = str5;
                    mVar.f758a = c0026i;
                    c0026i.f744e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_INVOKED;
                    c0026i.f740a = feedbackParcelables$SelectionFeedback$SelectionType;
                    if (b5 != null) {
                        c0026i.f741b = b5;
                        c0026i.f749j = C0064t.e(b5, feedbackParcelables$SelectionFeedback$SelectionType);
                        c0026i.f742c = C0064t.d(b5);
                        c0026i.f750k = C0064t.c(b5);
                    }
                    c0026i.f743d = xVar.f833c;
                    if (c0026i.f750k != null) {
                        int i5 = 0;
                        while (true) {
                            List list2 = c0026i.f750k;
                            list2.getClass();
                            if (i5 >= list2.size()) {
                                break;
                            }
                            List list3 = c0026i.f750k;
                            list3.getClass();
                            String str6 = ((J1.k) list3.get(i5)).f753a;
                            str6.getClass();
                            J1.w wVar = c0026i.f743d;
                            wVar.getClass();
                            if (str6.equals(wVar.f823a)) {
                                c0026i.f751l = C0064t.b(xVar, i5);
                            }
                            i5++;
                        }
                    }
                    c0026i.f752m = suggestParcelables$InteractionType;
                    J1.n nVar = new J1.n();
                    nVar.f762b = 0;
                    nVar.f763c = str3;
                    int i6 = M1.c.f1362a;
                    nVar.f761a = arrayList2;
                    j(str3, nVar);
                }
                if (this.f1234h == null || this.f1236j == null) {
                    M1.b.d("Invalid state for menu: no entity", null);
                    return false;
                }
                J1.w wVar2 = xVar.f833c;
                if (wVar2 != null) {
                    wVar2.f824b = xVar.f832b;
                    J1.F f4 = wVar2.f829g;
                    com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = this.f1228b;
                    if (f4 == null || d(f4)) {
                        C0060o c0060o2 = this.f1236j;
                        int i7 = M1.c.f1362a;
                        c0060o2.getClass();
                        String str7 = wVar2.f823a;
                        str7.getClass();
                        EntitiesData entitiesData = c0060o2.f1218l;
                        if (entitiesData == null) {
                            M1.b.d("Unable to find pending intent for ".concat(str7), new Throwable());
                            pendingIntent = null;
                        } else {
                            pendingIntent = entitiesData.getPendingIntent(str7);
                        }
                        if (this.f1234h != null) {
                            bVar.a();
                        }
                        if (pendingIntent != null) {
                            try {
                                J1.B b6 = this.f1234h;
                                b6.getClass();
                                if (b6.f671s) {
                                    M1.b.d("AssistantStarter is null, failed to start assistant intent", null);
                                    return false;
                                }
                                pendingIntent.send();
                            } catch (PendingIntent.CanceledException e4) {
                                M1.b.d("Pending Intent canceled for " + xVar.f832b, e4);
                                return false;
                            } catch (ActivityNotFoundException e5) {
                                M1.b.d("Error launching intent for " + xVar.f832b, e5);
                                return false;
                            }
                        }
                    } else {
                        J1.F f5 = wVar2.f829g;
                        int i8 = M1.c.f1362a;
                        f5.getClass();
                        final Intent intentInfoToIntent = intentInfoToIntent(f5, true);
                        if (intentInfoToIntent != null) {
                            try {
                                if (this.f1234h != null) {
                                    bVar.a();
                                }
                                ComponentName component = intentInfoToIntent.getComponent();
                                Context context = this.f1227a;
                                if (component == null || TextUtils.isEmpty(component.getClassName())) {
                                    context.startActivity(intentInfoToIntent);
                                } else {
                                    J1.F f6 = wVar2.f829g;
                                    f6.getClass();
                                    int ordinal = f6.f687h.ordinal();
                                    if (ordinal != 1) {
                                        final X1.f fVar = this.f1230d;
                                        if (ordinal == 2) {
                                            C0060o c0060o3 = this.f1236j;
                                            if (c0060o3 != null && c0060o3.k()) {
                                                fVar.j(c0060o3.g(), intentInfoToIntent);
                                            }
                                            M1.b.d("Cannot share image because no image was found.", null);
                                        } else if (ordinal == 3) {
                                            C0060o c0060o4 = this.f1236j;
                                            if (c0060o4 != null && c0060o4.k()) {
                                                final Rect g4 = c0060o4.g();
                                                fVar.getClass();
                                                Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: X1.c
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        f.h(f.this, g4, intentInfoToIntent);
                                                    }
                                                });
                                            }
                                            M1.b.d("Cannot open Lens because no image was found.", null);
                                        } else if (ordinal == 4) {
                                            C0060o c0060o5 = this.f1236j;
                                            if (c0060o5 != null && c0060o5.k()) {
                                                final Rect g5 = c0060o5.g();
                                                fVar.getClass();
                                                Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: X1.a
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        switch (r3) {
                                                            case 0:
                                                                f.g(fVar, g5);
                                                                return;
                                                            default:
                                                                f.e(fVar, g5);
                                                                return;
                                                        }
                                                    }
                                                });
                                            }
                                            M1.b.d("Cannot save Image because no image was found.", null);
                                        } else if (ordinal == 5) {
                                            C0060o c0060o6 = this.f1236j;
                                            if (c0060o6 != null && c0060o6.k()) {
                                                final Rect g6 = c0060o6.g();
                                                fVar.getClass();
                                                Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: X1.a
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        switch (r3) {
                                                            case 0:
                                                                f.g(fVar, g6);
                                                                return;
                                                            default:
                                                                f.e(fVar, g6);
                                                                return;
                                                        }
                                                    }
                                                });
                                            }
                                            M1.b.d("Cannot copy image because no image was found.", null);
                                        } else if (ordinal != 7) {
                                            this.f1232f.sendBroadcast(intentInfoToIntent);
                                        } else {
                                            C0060o c0060o7 = this.f1236j;
                                            if (c0060o7 != null && c0060o7.k()) {
                                                c0060o7.g();
                                                TaskView taskView = fVar.f2036b;
                                                if (taskView != null) {
                                                    runnableList = taskView.launchTaskAnimated();
                                                }
                                                if (runnableList != null) {
                                                    runnableList.add(new X1.b(fVar, 0));
                                                }
                                            }
                                            M1.b.d("Cannot search for image because no image was found.", null);
                                        }
                                    } else {
                                        String stringExtra = intentInfoToIntent.getStringExtra("text");
                                        if (stringExtra != null && (clipboardManager = (ClipboardManager) context.getSystemService("clipboard")) != null) {
                                            clipboardManager.setPrimaryClip(ClipData.newPlainText(context.getString(R.string.copied_text_label), stringExtra));
                                        }
                                    }
                                }
                            } catch (ActivityNotFoundException e6) {
                                M1.b.d("Error launching intent for " + xVar.f832b, e6);
                                return false;
                            }
                        }
                    }
                }
                return true;
            }
        }
        M1.b.d("Invalid menu item clicked; item id = " + itemId, null);
        return false;
    }

    public final void g() {
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.LONG_PRESS;
        C0060o c0060o = this.f1236j;
        if (c0060o == null) {
            M1.b.c("onSelectionShown logging failed, entitiesModel is null.");
            return;
        }
        int i4 = M1.c.f1362a;
        String concat = (c0060o.k() ? "IMAGE" : "TEXT").concat(" Selection Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s");
        String h4 = c0060o.h();
        String str = c0060o.f1214h;
        String str2 = c0060o.f1215i;
        String str3 = c0060o.f1211e;
        M1.b.c(String.format(concat, str3, h4, str, str2));
        ArrayList arrayList = new ArrayList();
        String h5 = c0060o.h();
        String str4 = c0060o.f1214h;
        String str5 = c0060o.f1215i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0060o.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        C0022e c0022e = c0060o.f1216j;
        J1.B b4 = this.f1234h;
        J1.m mVar = new J1.m();
        arrayList.add(mVar);
        mVar.f759b = SystemClock.elapsedRealtime();
        J1.r rVar = new J1.r();
        rVar.f779f = str3;
        rVar.f780g = h5;
        rVar.f781h = str4;
        rVar.f782i = str5;
        C0064t.a(b4, rVar);
        mVar.f758a = rVar;
        rVar.f774a = feedbackParcelables$SelectionFeedback$SelectionType;
        rVar.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_SHOWN;
        if (c0022e != null) {
            rVar.f783j = c0022e;
        }
        if (b4 != null) {
            rVar.f775b = b4;
        }
        rVar.f784k = suggestParcelables$InteractionType;
        J1.n nVar = new J1.n();
        nVar.f762b = 0;
        nVar.f763c = str3;
        nVar.f761a = arrayList;
        j(str3, nVar);
    }

    public final void h() {
        C0060o c0060o = this.f1236j;
        if (c0060o == null) {
            M1.b.c("onSuggestViewActionMenuShown logging failed, entitiesModel is null.");
            return;
        }
        int i4 = M1.c.f1362a;
        c0060o.getClass();
        String concat = (c0060o.k() ? "IMAGE" : "TEXT").concat(" Action Menu Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s");
        String h4 = c0060o.h();
        String str = c0060o.f1214h;
        String str2 = c0060o.f1215i;
        String str3 = c0060o.f1211e;
        M1.b.c(String.format(concat, str3, h4, str, str2));
        ArrayList arrayList = new ArrayList();
        String h5 = c0060o.h();
        String str4 = c0060o.f1214h;
        String str5 = c0060o.f1215i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0060o.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        J1.B b4 = this.f1234h;
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.LONG_PRESS;
        J1.m mVar = new J1.m();
        arrayList.add(mVar);
        mVar.f759b = SystemClock.elapsedRealtime();
        C0026i c0026i = new C0026i();
        c0026i.f745f = str3;
        c0026i.f746g = h5;
        c0026i.f747h = str4;
        c0026i.f748i = str5;
        mVar.f758a = c0026i;
        c0026i.f744e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_MENU_SHOWN;
        c0026i.f740a = feedbackParcelables$SelectionFeedback$SelectionType;
        if (b4 != null) {
            c0026i.f741b = b4;
            c0026i.f749j = C0064t.e(b4, feedbackParcelables$SelectionFeedback$SelectionType);
            c0026i.f742c = C0064t.d(b4);
            c0026i.f750k = C0064t.c(b4);
        }
        c0026i.f752m = suggestParcelables$InteractionType;
        J1.n nVar = new J1.n();
        nVar.f762b = 0;
        nVar.f763c = str3;
        int i5 = M1.c.f1362a;
        nVar.f761a = arrayList;
        j(str3, nVar);
    }

    public final void i(J1.B b4) {
        C0060o c0060o = this.f1236j;
        if (c0060o == null) {
            M1.b.c("onSuggestViewSelectionAdjusted logging failed, entitiesModel is null.");
            return;
        }
        int i4 = M1.c.f1362a;
        String concat = (c0060o.k() ? "IMAGE" : "TEXT").concat(" Selection Adjusted - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s");
        String h4 = c0060o.h();
        String str = c0060o.f1214h;
        String str2 = c0060o.f1215i;
        String str3 = c0060o.f1211e;
        M1.b.c(String.format(concat, str3, h4, str, str2));
        ArrayList arrayList = new ArrayList();
        String h5 = c0060o.h();
        String str4 = c0060o.f1214h;
        String str5 = c0060o.f1215i;
        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = c0060o.k() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        C0022e c0022e = c0060o.f1216j;
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.LONG_PRESS;
        J1.m mVar = new J1.m();
        arrayList.add(mVar);
        mVar.f759b = SystemClock.elapsedRealtime();
        J1.r rVar = new J1.r();
        rVar.f779f = str3;
        rVar.f780g = h5;
        rVar.f781h = str4;
        rVar.f782i = str5;
        C0064t.a(b4, rVar);
        mVar.f758a = rVar;
        rVar.f774a = feedbackParcelables$SelectionFeedback$SelectionType;
        rVar.f777d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_ADJUSTED;
        if (c0022e != null) {
            rVar.f783j = c0022e;
        }
        rVar.f775b = b4;
        rVar.f784k = suggestParcelables$InteractionType;
        J1.n nVar = new J1.n();
        nVar.f762b = 0;
        nVar.f763c = str3;
        nVar.f761a = arrayList;
        j(str3, nVar);
    }

    public Intent intentInfoToIntent(J1.F f4, boolean z4) {
        M1.b.c("Checking intent info: " + f4);
        Intent intent = new Intent();
        if (!TextUtils.isEmpty(f4.f683d)) {
            intent.setAction(f4.f683d);
        }
        if (!TextUtils.isEmpty(f4.f681b) && !TextUtils.isEmpty(f4.f682c)) {
            intent.setClassName(f4.f681b, f4.f682c);
        } else if (!TextUtils.isEmpty(f4.f681b)) {
            intent.setPackage(f4.f681b);
        }
        if (!TextUtils.isEmpty(f4.f684e)) {
            intent.setData(Uri.parse(f4.f684e));
        }
        if (!TextUtils.isEmpty(f4.f685f)) {
            intent.setType(f4.f685f);
        }
        int i4 = f4.f686g;
        if (i4 != 0) {
            intent.setFlags(i4);
        }
        List<J1.G> list = f4.f680a;
        int i5 = M1.c.f1362a;
        list.getClass();
        for (J1.G g4 : list) {
            switch (g4.f689b.ordinal()) {
                case 1:
                    intent.putExtra(g4.f688a, g4.f690c);
                    break;
                case 2:
                    intent.putExtra(g4.f688a, g4.f691d);
                    break;
                case 3:
                    intent.putExtra(g4.f688a, g4.f692e);
                    break;
                case 4:
                    intent.putExtra(g4.f688a, g4.f693f);
                    break;
                case 5:
                    if (z4) {
                        String str = g4.f688a;
                        J1.F f5 = g4.f695h;
                        f5.getClass();
                        intent.putExtra(str, intentInfoToIntent(f5, false));
                        break;
                    } else {
                        throw new IllegalArgumentException("Only ONE level of nested intent is allowed");
                    }
                case 6:
                    intent.putExtra(g4.f688a, Uri.parse(g4.f696i));
                    break;
                case 7:
                    intent.putExtra(g4.f688a, g4.f694g);
                    break;
                default:
                    StringBuilder sb = new StringBuilder("Menu action error: unknown menu intent param type ");
                    sb.append(g4.f689b);
                    M1.b.d(sb.toString(), null);
                    return null;
            }
        }
        return intent;
    }

    public final void j(String str, J1.n nVar) {
        C0046a0 c0046a0;
        C0060o c0060o = this.f1236j;
        if (c0060o == null || (c0046a0 = c0060o.f1207a) == null) {
            return;
        }
        c0046a0.i(str, this.f1231e, nVar);
    }
}
