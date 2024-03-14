package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
@g3.c(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {414, 416}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements m3.p {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, kotlin.coroutines.c cVar) {
        super(cVar);
        this.$this_allViews = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, cVar);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // m3.p
    public final Object invoke(Object obj, Object obj2) {
        return ((ViewKt$allViews$1) create((kotlin.sequences.i) obj, (kotlin.coroutines.c) obj2)).invokeSuspend(e3.f.f9037a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            kotlin.sequences.i iVar = (kotlin.sequences.i) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = iVar;
            this.label = 1;
            iVar.a(view, this);
            return coroutineSingletons;
        }
        if (i4 == 1) {
            kotlin.sequences.i iVar2 = (kotlin.sequences.i) this.L$0;
            e3.d.b(obj);
            View view2 = this.$this_allViews;
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                kotlin.jvm.internal.h.e(viewGroup, "<this>");
                ViewGroupKt$descendants$1 viewGroupKt$descendants$1 = new ViewGroupKt$descendants$1(viewGroup, null);
                this.L$0 = null;
                this.label = 2;
                iVar2.getClass();
                kotlin.sequences.h hVar = new kotlin.sequences.h();
                hVar.f11287g = kotlin.coroutines.intrinsics.a.a(hVar, hVar, viewGroupKt$descendants$1);
                Object b4 = iVar2.b(hVar, this);
                if (b4 != coroutineSingletons) {
                    b4 = e3.f.f9037a;
                }
                if (b4 == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else if (i4 != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            e3.d.b(obj);
        }
        return e3.f.f9037a;
    }
}
