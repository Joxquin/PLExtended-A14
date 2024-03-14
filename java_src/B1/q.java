package b1;

import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
import java.util.function.IntConsumer;
/* loaded from: classes.dex */
public final /* synthetic */ class q implements IntConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4205a;

    public /* synthetic */ q(int i4) {
        this.f4205a = i4;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(final int i4) {
        switch (this.f4205a) {
            case 0:
                int i5 = QuickstepWidgetHolder.f5228a;
                return;
            default:
                Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: b1.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((ArrayList) QuickstepWidgetHolder.sHolders).forEach(
                        /*  JADX ERROR: Method code generation error
                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0002: INVOKE  
                              (wrap: java.util.ArrayList : 0x0007: CHECK_CAST (java.util.ArrayList) (wrap: java.util.List : 0x0000: SGET   com.android.launcher3.uioverrides.QuickstepWidgetHolder.sHolders java.util.List))
                              (wrap: java.util.function.Consumer : 0x0004: CONSTRUCTOR  (wrap: int : 0x0000: IGET  (r0v1 int A[REMOVE]) = (r0v0 'this' b1.v A[IMMUTABLE_TYPE, THIS]) b1.v.d int) call: b1.o.<init>(int):void type: CONSTRUCTOR)
                             type: VIRTUAL call: java.util.ArrayList.forEach(java.util.function.Consumer):void in method: b1.v.run():void, file: classes.dex
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:309)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:272)
                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:91)
                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:296)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:275)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:377)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
                            	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
                            	at java.util.ArrayList.forEach(Unknown Source)
                            	at java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
                            	at java.util.stream.Sink$ChainedReference.end(Unknown Source)
                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: b1.o, state: NOT_LOADED
                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:302)
                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:769)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:718)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:417)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:144)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:120)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1097)
                            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:872)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:421)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:302)
                            	... 15 more
                            */
                        /*
                            this = this;
                            int r0 = r1
                            com.android.launcher3.uioverrides.QuickstepWidgetHolder.g(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: b1.v.run():void");
                    }
                });
                return;
        }
    }
}
