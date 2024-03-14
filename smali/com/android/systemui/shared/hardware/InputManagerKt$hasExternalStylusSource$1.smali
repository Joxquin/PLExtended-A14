.class final Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;->INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/InputDevice;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/android/systemui/shared/hardware/InputDeviceKt;->isExternalStylusSource(Landroid/view/InputDevice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/view/InputDevice;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;->invoke(Landroid/view/InputDevice;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
