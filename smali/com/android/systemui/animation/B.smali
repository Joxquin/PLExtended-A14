.class public final Lcom/android/systemui/animation/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lm3/a;


# direct methods
.method public constructor <init>(Lm3/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/B;->d:Lm3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/B;->d:Lm3/a;

    invoke-interface {p0}, Lm3/a;->invoke()Ljava/lang/Object;

    return-void
.end method
