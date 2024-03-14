.class public final Lcom/android/systemui/unfold/config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/a;


# instance fields
.field public final a:Le3/c;

.field public final b:Le3/c;

.field public final c:Le3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;->d:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;

    invoke-static {v0}, Lkotlin/a;->a(Lm3/a;)Le3/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/config/a;->a:Le3/c;

    sget-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;->d:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;

    invoke-static {v0}, Lkotlin/a;->a(Lm3/a;)Le3/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/config/a;->b:Le3/c;

    sget-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$halfFoldedTimeoutMillis$2;->d:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$halfFoldedTimeoutMillis$2;

    invoke-static {v0}, Lkotlin/a;->a(Lm3/a;)Le3/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/config/a;->c:Le3/c;

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/config/a;->a:Le3/c;

    invoke-interface {p0}, Le3/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
