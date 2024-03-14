.class final Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# static fields
.field public static final d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
