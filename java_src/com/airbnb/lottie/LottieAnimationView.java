package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.j;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.shared.R;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import k.I;
import k0.C1179D;
import k0.C1183H;
import k0.C1186a;
import k0.C1191f;
import k0.C1192g;
import k0.C1194i;
import k0.C1195j;
import k0.C1197l;
import k0.C1198m;
import k0.CallableC1199n;
import k0.InterfaceC1180E;
import k0.InterfaceC1181F;
import k0.InterfaceC1182G;
import k0.InterfaceC1187b;
import k0.K;
import k0.M;
import k0.N;
import k0.O;
import k0.P;
import k0.r;
import k0.s;
import o0.C1320a;
import o0.C1321b;
import p0.C1343e;
import w0.C1446c;
import w0.Choreographer$FrameCallbackC1447d;
import w0.g;
import w0.h;
import x0.c;
import x0.e;
/* loaded from: classes.dex */
public class LottieAnimationView extends I {

    /* renamed from: u  reason: collision with root package name */
    public static final C1192g f4275u = new C1192g();

    /* renamed from: g  reason: collision with root package name */
    public final C1191f f4276g;

    /* renamed from: h  reason: collision with root package name */
    public final C1194i f4277h;

    /* renamed from: i  reason: collision with root package name */
    public InterfaceC1180E f4278i;

    /* renamed from: j  reason: collision with root package name */
    public int f4279j;

    /* renamed from: k  reason: collision with root package name */
    public final a f4280k;

    /* renamed from: l  reason: collision with root package name */
    public String f4281l;

    /* renamed from: m  reason: collision with root package name */
    public int f4282m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f4283n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f4284o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f4285p;

    /* renamed from: q  reason: collision with root package name */
    public final Set f4286q;

    /* renamed from: r  reason: collision with root package name */
    public final Set f4287r;

    /* renamed from: s  reason: collision with root package name */
    public K f4288s;

    /* renamed from: t  reason: collision with root package name */
    public C1198m f4289t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [k0.f] */
    public LottieAnimationView(Context context) {
        super(context);
        this.f4276g = new InterfaceC1180E(this) { // from class: k0.f

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ LottieAnimationView f11109b;

            {
                this.f11109b = this;
            }

            @Override // k0.InterfaceC1180E
            public final void a(Object obj) {
                int i4 = r2;
                LottieAnimationView lottieAnimationView = this.f11109b;
                switch (i4) {
                    case 0:
                    case 1:
                    default:
                        lottieAnimationView.setComposition((C1198m) obj);
                        return;
                }
            }
        };
        this.f4277h = new C1194i(this);
        this.f4279j = 0;
        this.f4280k = new a();
        this.f4283n = false;
        this.f4284o = false;
        this.f4285p = true;
        this.f4286q = new HashSet();
        this.f4287r = new HashSet();
        c(null, R.attr.lottieAnimationViewStyle);
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f4280k.f4317e.addListener(animatorListener);
    }

    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f4280k.f4317e.addPauseListener(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4280k.f4317e.addUpdateListener(animatorUpdateListener);
    }

    public boolean addLottieOnCompositionLoadedListener(InterfaceC1181F interfaceC1181F) {
        C1198m c1198m = this.f4289t;
        if (c1198m != null) {
            interfaceC1181F.a(c1198m);
        }
        return this.f4287r.add(interfaceC1181F);
    }

    public void addValueCallback(C1343e c1343e, Object obj, c cVar) {
        this.f4280k.a(c1343e, obj, cVar);
    }

    public final void b() {
        K k4 = this.f4288s;
        if (k4 != null) {
            C1191f c1191f = this.f4276g;
            synchronized (k4) {
                k4.f11094a.remove(c1191f);
            }
            K k5 = this.f4288s;
            C1194i c1194i = this.f4277h;
            synchronized (k5) {
                k5.f11095b.remove(c1194i);
            }
        }
    }

    public final void c(AttributeSet attributeSet, int i4) {
        String string;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, N.f11101a, i4, 0);
        this.f4285p = obtainStyledAttributes.getBoolean(1, true);
        boolean hasValue = obtainStyledAttributes.hasValue(11);
        boolean hasValue2 = obtainStyledAttributes.hasValue(6);
        boolean hasValue3 = obtainStyledAttributes.hasValue(16);
        if (hasValue && hasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (hasValue) {
            int resourceId = obtainStyledAttributes.getResourceId(11, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (hasValue2) {
            String string2 = obtainStyledAttributes.getString(6);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (hasValue3 && (string = obtainStyledAttributes.getString(16)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(obtainStyledAttributes.getResourceId(5, 0));
        if (obtainStyledAttributes.getBoolean(0, false)) {
            this.f4284o = true;
        }
        if (obtainStyledAttributes.getBoolean(9, false)) {
            this.f4280k.f4317e.setRepeatCount(-1);
        }
        if (obtainStyledAttributes.hasValue(14)) {
            setRepeatMode(obtainStyledAttributes.getInt(14, 1));
        }
        if (obtainStyledAttributes.hasValue(13)) {
            setRepeatCount(obtainStyledAttributes.getInt(13, -1));
        }
        if (obtainStyledAttributes.hasValue(15)) {
            setSpeed(obtainStyledAttributes.getFloat(15, 1.0f));
        }
        if (obtainStyledAttributes.hasValue(2)) {
            setClipToCompositionBounds(obtainStyledAttributes.getBoolean(2, true));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(8));
        setProgress(obtainStyledAttributes.getFloat(10, 0.0f));
        enableMergePathsForKitKatAndAbove(obtainStyledAttributes.getBoolean(4, false));
        if (obtainStyledAttributes.hasValue(3)) {
            addValueCallback(new C1343e("**"), InterfaceC1182G.f11058K, new c(new O(B.c.a(obtainStyledAttributes.getResourceId(3, -1), getContext()).getDefaultColor())));
        }
        if (obtainStyledAttributes.hasValue(12)) {
            int i5 = obtainStyledAttributes.getInt(12, 0);
            if (i5 >= RenderMode.values().length) {
                i5 = 0;
            }
            setRenderMode(RenderMode.values()[i5]);
        }
        setIgnoreDisabledSystemAnimations(obtainStyledAttributes.getBoolean(7, false));
        obtainStyledAttributes.recycle();
        a aVar = this.f4280k;
        Context context = getContext();
        g gVar = h.f12735a;
        Boolean valueOf = Boolean.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f);
        aVar.getClass();
        aVar.f4318f = valueOf.booleanValue();
    }

    public void cancelAnimation() {
        this.f4286q.add(UserActionTaken.PLAY_OPTION);
        a aVar = this.f4280k;
        aVar.f4322j.clear();
        aVar.f4317e.cancel();
        if (aVar.isVisible()) {
            return;
        }
        aVar.f4321i = LottieDrawable$OnVisibleAction.NONE;
    }

    @Deprecated
    public void disableExtraScaleModeInFitXY() {
        this.f4280k.getClass();
    }

    public final void e(K k4) {
        Throwable th;
        ((HashSet) this.f4286q).add(UserActionTaken.SET_ANIMATION);
        this.f4289t = null;
        this.f4280k.d();
        b();
        k4.a(this.f4276g);
        C1194i c1194i = this.f4277h;
        synchronized (k4) {
            C1183H c1183h = k4.f11097d;
            if (c1183h != null && (th = c1183h.f11090b) != null) {
                c1194i.a(th);
            }
            k4.f11095b.add(c1194i);
        }
        this.f4288s = k4;
    }

    public void enableMergePathsForKitKatAndAbove(boolean z4) {
        a aVar = this.f4280k;
        if (aVar.f4327o == z4) {
            return;
        }
        aVar.f4327o = z4;
        if (aVar.f4316d != null) {
            aVar.c();
        }
    }

    public boolean getClipToCompositionBounds() {
        return this.f4280k.f4329q;
    }

    public C1198m getComposition() {
        return this.f4289t;
    }

    public long getDuration() {
        C1198m c1198m = this.f4289t;
        if (c1198m != null) {
            return c1198m.b();
        }
        return 0L;
    }

    public int getFrame() {
        return (int) this.f4280k.f4317e.f12726i;
    }

    public String getImageAssetsFolder() {
        return this.f4280k.f4325m;
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f4280k.f4328p;
    }

    public float getMaxFrame() {
        return this.f4280k.f4317e.c();
    }

    public float getMinFrame() {
        return this.f4280k.f4317e.d();
    }

    public M getPerformanceTracker() {
        C1198m c1198m = this.f4280k.f4316d;
        if (c1198m != null) {
            return c1198m.f11121a;
        }
        return null;
    }

    public float getProgress() {
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4280k.f4317e;
        C1198m c1198m = choreographer$FrameCallbackC1447d.f12730m;
        if (c1198m == null) {
            return 0.0f;
        }
        float f4 = choreographer$FrameCallbackC1447d.f12726i;
        float f5 = c1198m.f11131k;
        return (f4 - f5) / (c1198m.f11132l - f5);
    }

    public RenderMode getRenderMode() {
        return this.f4280k.f4336x ? RenderMode.SOFTWARE : RenderMode.HARDWARE;
    }

    public int getRepeatCount() {
        return this.f4280k.f4317e.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.f4280k.f4317e.getRepeatMode();
    }

    public float getSpeed() {
        return this.f4280k.f4317e.f12723f;
    }

    public boolean hasMasks() {
        s0.c cVar = this.f4280k.f4330r;
        return cVar != null && cVar.u();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasMatte() {
        /*
            r5 = this;
            com.airbnb.lottie.a r5 = r5.f4280k
            s0.c r5 = r5.f4330r
            r0 = 0
            if (r5 == 0) goto L4a
            java.lang.Boolean r1 = r5.f12221I
            r2 = 1
            if (r1 != 0) goto L41
            s0.b r1 = r5.f12209t
            if (r1 == 0) goto L12
            r1 = r2
            goto L13
        L12:
            r1 = r0
        L13:
            if (r1 == 0) goto L1a
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r5.f12221I = r1
            goto L38
        L1a:
            java.util.List r1 = r5.f12217E
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            int r3 = r1.size()
            int r3 = r3 - r2
        L23:
            if (r3 < 0) goto L3d
            java.lang.Object r4 = r1.get(r3)
            s0.b r4 = (s0.b) r4
            s0.b r4 = r4.f12209t
            if (r4 == 0) goto L31
            r4 = r2
            goto L32
        L31:
            r4 = r0
        L32:
            if (r4 == 0) goto L3a
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r5.f12221I = r1
        L38:
            r5 = r2
            goto L47
        L3a:
            int r3 = r3 + (-1)
            goto L23
        L3d:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r5.f12221I = r1
        L41:
            java.lang.Boolean r5 = r5.f12221I
            boolean r5 = r5.booleanValue()
        L47:
            if (r5 == 0) goto L4a
            r0 = r2
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieAnimationView.hasMatte():boolean");
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if (drawable instanceof a) {
            boolean z4 = ((a) drawable).f4336x;
            RenderMode renderMode = RenderMode.SOFTWARE;
            if ((z4 ? renderMode : RenderMode.HARDWARE) == renderMode) {
                this.f4280k.invalidateSelf();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        a aVar = this.f4280k;
        if (drawable2 == aVar) {
            super.invalidateDrawable(aVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isAnimating() {
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4280k.f4317e;
        if (choreographer$FrameCallbackC1447d == null) {
            return false;
        }
        return choreographer$FrameCallbackC1447d.f12731n;
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.f4280k.f4327o;
    }

    @Deprecated
    public void loop(boolean z4) {
        this.f4280k.f4317e.setRepeatCount(z4 ? -1 : 0);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.f4284o) {
            return;
        }
        this.f4280k.j();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        int i4;
        if (!(parcelable instanceof C1197l)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1197l c1197l = (C1197l) parcelable;
        super.onRestoreInstanceState(c1197l.getSuperState());
        this.f4281l = c1197l.f11114d;
        Set set = this.f4286q;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.f4281l)) {
            setAnimation(this.f4281l);
        }
        this.f4282m = c1197l.f11115e;
        if (!this.f4286q.contains(userActionTaken) && (i4 = this.f4282m) != 0) {
            setAnimation(i4);
        }
        if (!this.f4286q.contains(UserActionTaken.SET_PROGRESS)) {
            setProgress(c1197l.f11116f);
        }
        if (!this.f4286q.contains(UserActionTaken.PLAY_OPTION) && c1197l.f11117g) {
            playAnimation();
        }
        if (!this.f4286q.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(c1197l.f11118h);
        }
        if (!this.f4286q.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(c1197l.f11119i);
        }
        if (this.f4286q.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(c1197l.f11120j);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        float f4;
        boolean z4;
        C1197l c1197l = new C1197l(super.onSaveInstanceState());
        c1197l.f11114d = this.f4281l;
        c1197l.f11115e = this.f4282m;
        a aVar = this.f4280k;
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = aVar.f4317e;
        C1198m c1198m = choreographer$FrameCallbackC1447d.f12730m;
        if (c1198m == null) {
            f4 = 0.0f;
        } else {
            float f5 = choreographer$FrameCallbackC1447d.f12726i;
            float f6 = c1198m.f11131k;
            f4 = (f5 - f6) / (c1198m.f11132l - f6);
        }
        c1197l.f11116f = f4;
        if (aVar.isVisible()) {
            z4 = aVar.f4317e.f12731n;
        } else {
            LottieDrawable$OnVisibleAction lottieDrawable$OnVisibleAction = aVar.f4321i;
            z4 = lottieDrawable$OnVisibleAction == LottieDrawable$OnVisibleAction.PLAY || lottieDrawable$OnVisibleAction == LottieDrawable$OnVisibleAction.RESUME;
        }
        c1197l.f11117g = z4;
        a aVar2 = this.f4280k;
        c1197l.f11118h = aVar2.f4325m;
        c1197l.f11119i = aVar2.f4317e.getRepeatMode();
        c1197l.f11120j = this.f4280k.f4317e.getRepeatCount();
        return c1197l;
    }

    public void pauseAnimation() {
        this.f4284o = false;
        this.f4280k.i();
    }

    public void playAnimation() {
        this.f4286q.add(UserActionTaken.PLAY_OPTION);
        this.f4280k.j();
    }

    public void removeAllAnimatorListeners() {
        this.f4280k.f4317e.removeAllListeners();
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.f4287r.clear();
    }

    public void removeAllUpdateListeners() {
        a aVar = this.f4280k;
        aVar.f4317e.removeAllUpdateListeners();
        aVar.f4317e.addUpdateListener(aVar.f4323k);
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f4280k.f4317e.removeListener(animatorListener);
    }

    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f4280k.f4317e.removePauseListener(animatorPauseListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(InterfaceC1181F interfaceC1181F) {
        return this.f4287r.remove(interfaceC1181F);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4280k.f4317e.removeUpdateListener(animatorUpdateListener);
    }

    public List resolveKeyPath(C1343e c1343e) {
        return this.f4280k.l(c1343e);
    }

    public void resumeAnimation() {
        this.f4286q.add(UserActionTaken.PLAY_OPTION);
        this.f4280k.m();
    }

    public void reverseAnimationSpeed() {
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4280k.f4317e;
        choreographer$FrameCallbackC1447d.f12723f = -choreographer$FrameCallbackC1447d.f12723f;
    }

    public void setAnimation(final InputStream inputStream, final String str) {
        e(s.a(str, new Callable() { // from class: k0.o
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return s.c(inputStream, str);
            }
        }));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        K a4;
        if (this.f4285p) {
            Context context = getContext();
            Map map = s.f11150a;
            String a5 = j.a("url_", str);
            a4 = s.a(a5, new CallableC1199n(0, context, str, a5));
        } else {
            a4 = s.a(null, new CallableC1199n(0, getContext(), str, null));
        }
        e(a4);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z4) {
        this.f4280k.f4334v = z4;
    }

    public void setCacheComposition(boolean z4) {
        this.f4285p = z4;
    }

    public void setClipToCompositionBounds(boolean z4) {
        a aVar = this.f4280k;
        if (z4 != aVar.f4329q) {
            aVar.f4329q = z4;
            s0.c cVar = aVar.f4330r;
            if (cVar != null) {
                cVar.f12223K = z4;
            }
            aVar.invalidateSelf();
        }
    }

    public void setComposition(C1198m c1198m) {
        this.f4280k.setCallback(this);
        this.f4289t = c1198m;
        this.f4283n = true;
        boolean n4 = this.f4280k.n(c1198m);
        this.f4283n = false;
        if (getDrawable() != this.f4280k || n4) {
            if (!n4) {
                boolean isAnimating = isAnimating();
                setImageDrawable(null);
                setImageDrawable(this.f4280k);
                if (isAnimating) {
                    this.f4280k.m();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = ((HashSet) this.f4287r).iterator();
            while (it.hasNext()) {
                ((InterfaceC1181F) it.next()).a(c1198m);
            }
        }
    }

    public void setFailureListener(InterfaceC1180E interfaceC1180E) {
        this.f4278i = interfaceC1180E;
    }

    public void setFallbackResource(int i4) {
        this.f4279j = i4;
    }

    public void setFontAssetDelegate(C1186a c1186a) {
        C1320a c1320a = this.f4280k.f4326n;
    }

    public void setFrame(int i4) {
        this.f4280k.o(i4);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z4) {
        this.f4280k.f4319g = z4;
    }

    public void setImageAssetDelegate(InterfaceC1187b interfaceC1187b) {
        C1321b c1321b = this.f4280k.f4324l;
    }

    public void setImageAssetsFolder(String str) {
        this.f4280k.f4325m = str;
    }

    @Override // k.I, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        b();
        super.setImageBitmap(bitmap);
    }

    @Override // k.I, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        b();
        super.setImageDrawable(drawable);
    }

    @Override // k.I, android.widget.ImageView
    public void setImageResource(int i4) {
        b();
        super.setImageResource(i4);
    }

    public void setMaintainOriginalImageBounds(boolean z4) {
        this.f4280k.f4328p = z4;
    }

    public void setMaxFrame(int i4) {
        this.f4280k.p(i4);
    }

    public void setMaxProgress(float f4) {
        this.f4280k.r(f4);
    }

    public void setMinAndMaxFrame(String str) {
        this.f4280k.t(str);
    }

    public void setMinAndMaxProgress(float f4, float f5) {
        this.f4280k.v(f4, f5);
    }

    public void setMinFrame(int i4) {
        this.f4280k.w(i4);
    }

    public void setMinProgress(float f4) {
        this.f4280k.y(f4);
    }

    public void setOutlineMasksAndMattes(boolean z4) {
        a aVar = this.f4280k;
        if (aVar.f4333u == z4) {
            return;
        }
        aVar.f4333u = z4;
        s0.c cVar = aVar.f4330r;
        if (cVar != null) {
            cVar.s(z4);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z4) {
        a aVar = this.f4280k;
        aVar.f4332t = z4;
        C1198m c1198m = aVar.f4316d;
        if (c1198m != null) {
            c1198m.f11121a.f11098a = z4;
        }
    }

    public void setProgress(float f4) {
        this.f4286q.add(UserActionTaken.SET_PROGRESS);
        this.f4280k.z(f4);
    }

    public void setRenderMode(RenderMode renderMode) {
        a aVar = this.f4280k;
        aVar.f4335w = renderMode;
        aVar.e();
    }

    public void setRepeatCount(int i4) {
        ((HashSet) this.f4286q).add(UserActionTaken.SET_REPEAT_COUNT);
        this.f4280k.f4317e.setRepeatCount(i4);
    }

    public void setRepeatMode(int i4) {
        this.f4286q.add(UserActionTaken.SET_REPEAT_MODE);
        this.f4280k.f4317e.setRepeatMode(i4);
    }

    public void setSafeMode(boolean z4) {
        this.f4280k.f4320h = z4;
    }

    public void setSpeed(float f4) {
        this.f4280k.f4317e.f12723f = f4;
    }

    public void setTextDelegate(P p4) {
        this.f4280k.getClass();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        a aVar;
        boolean z4 = this.f4283n;
        if (!z4 && drawable == (aVar = this.f4280k)) {
            Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = aVar.f4317e;
            if (choreographer$FrameCallbackC1447d == null ? false : choreographer$FrameCallbackC1447d.f12731n) {
                pauseAnimation();
                super.unscheduleDrawable(drawable);
            }
        }
        if (!z4 && (drawable instanceof a)) {
            a aVar2 = (a) drawable;
            Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d2 = aVar2.f4317e;
            if (choreographer$FrameCallbackC1447d2 != null ? choreographer$FrameCallbackC1447d2.f12731n : false) {
                aVar2.i();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public Bitmap updateBitmap(String str, Bitmap bitmap) {
        a aVar = this.f4280k;
        C1321b h4 = aVar.h();
        Bitmap bitmap2 = null;
        if (h4 == null) {
            C1446c.b("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
        } else {
            Map map = h4.f11848c;
            if (bitmap == null) {
                C1179D c1179d = (C1179D) map.get(str);
                Bitmap bitmap3 = c1179d.f11047d;
                c1179d.f11047d = null;
                bitmap2 = bitmap3;
            } else {
                bitmap2 = ((C1179D) map.get(str)).f11047d;
                h4.a(str, bitmap);
            }
            aVar.invalidateSelf();
        }
        return bitmap2;
    }

    public void addValueCallback(C1343e c1343e, Object obj, e eVar) {
        this.f4280k.a(c1343e, obj, new C1195j(eVar));
    }

    public void setAnimationFromJson(String str, String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f4280k.q(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z4) {
        this.f4280k.u(str, str2, z4);
    }

    public void setMinFrame(String str) {
        this.f4280k.x(str);
    }

    public void setAnimation(final int i4) {
        K a4;
        K k4;
        this.f4282m = i4;
        this.f4281l = null;
        if (isInEditMode()) {
            k4 = new K(new Callable() { // from class: k0.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    boolean z4 = lottieAnimationView.f4285p;
                    int i5 = i4;
                    if (z4) {
                        Context context = lottieAnimationView.getContext();
                        return s.e(i5, context, s.h(i5, context));
                    }
                    return s.e(i5, lottieAnimationView.getContext(), null);
                }
            }, true);
        } else {
            if (this.f4285p) {
                Context context = getContext();
                String h4 = s.h(i4, context);
                a4 = s.a(h4, new r(new WeakReference(context), context.getApplicationContext(), i4, h4));
            } else {
                Context context2 = getContext();
                Map map = s.f11150a;
                a4 = s.a(null, new r(new WeakReference(context2), context2.getApplicationContext(), i4, null));
            }
            k4 = a4;
        }
        e(k4);
    }

    public void setMinAndMaxFrame(int i4, int i5) {
        this.f4280k.s(i4, i5);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [k0.f] */
    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4276g = new InterfaceC1180E(this) { // from class: k0.f

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ LottieAnimationView f11109b;

            {
                this.f11109b = this;
            }

            @Override // k0.InterfaceC1180E
            public final void a(Object obj) {
                int i4 = r2;
                LottieAnimationView lottieAnimationView = this.f11109b;
                switch (i4) {
                    case 0:
                    case 1:
                    default:
                        lottieAnimationView.setComposition((C1198m) obj);
                        return;
                }
            }
        };
        this.f4277h = new C1194i(this);
        this.f4279j = 0;
        this.f4280k = new a();
        this.f4283n = false;
        this.f4284o = false;
        this.f4285p = true;
        this.f4286q = new HashSet();
        this.f4287r = new HashSet();
        c(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public void setAnimationFromUrl(String str, String str2) {
        e(s.a(str2, new CallableC1199n(0, getContext(), str, str2)));
    }

    public void setAnimation(final String str) {
        K a4;
        K k4;
        this.f4281l = str;
        this.f4282m = 0;
        if (isInEditMode()) {
            k4 = new K(new Callable() { // from class: k0.h
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    boolean z4 = lottieAnimationView.f4285p;
                    String str2 = str;
                    if (z4) {
                        Context context = lottieAnimationView.getContext();
                        Map map = s.f11150a;
                        return s.b(context, str2, "asset_" + str2);
                    }
                    return s.b(lottieAnimationView.getContext(), str2, null);
                }
            }, true);
        } else {
            if (this.f4285p) {
                Context context = getContext();
                Map map = s.f11150a;
                String a5 = j.a("asset_", str);
                a4 = s.a(a5, new CallableC1199n(1, context.getApplicationContext(), str, a5));
            } else {
                Context context2 = getContext();
                Map map2 = s.f11150a;
                a4 = s.a(null, new CallableC1199n(1, context2.getApplicationContext(), str, null));
            }
            k4 = a4;
        }
        e(k4);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [k0.f] */
    public LottieAnimationView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f4276g = new InterfaceC1180E(this) { // from class: k0.f

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ LottieAnimationView f11109b;

            {
                this.f11109b = this;
            }

            @Override // k0.InterfaceC1180E
            public final void a(Object obj) {
                int i42 = r2;
                LottieAnimationView lottieAnimationView = this.f11109b;
                switch (i42) {
                    case 0:
                    case 1:
                    default:
                        lottieAnimationView.setComposition((C1198m) obj);
                        return;
                }
            }
        };
        this.f4277h = new C1194i(this);
        this.f4279j = 0;
        this.f4280k = new a();
        this.f4283n = false;
        this.f4284o = false;
        this.f4285p = true;
        this.f4286q = new HashSet();
        this.f4287r = new HashSet();
        c(attributeSet, i4);
    }
}
