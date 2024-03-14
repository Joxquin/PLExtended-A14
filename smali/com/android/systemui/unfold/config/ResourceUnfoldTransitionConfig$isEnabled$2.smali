.class final Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# static fields
.field public static final d:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;

    invoke-direct {v0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;-><init>()V

    sput-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;->d:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "android"

    const-string v1, "config_unfoldTransitionEnabled"

    const-string v2, "bool"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
