.class public final synthetic Lcom/android/quickstep/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/BorderAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/BorderAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/m;->d:Lcom/android/quickstep/util/BorderAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/m;->d:Lcom/android/quickstep/util/BorderAnimator;

    invoke-static {p0}, Lcom/android/quickstep/util/BorderAnimator;->a(Lcom/android/quickstep/util/BorderAnimator;)V

    return-void
.end method
