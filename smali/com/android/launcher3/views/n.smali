.class public final synthetic Lcom/android/launcher3/views/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/FloatingIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/n;->d:Lcom/android/launcher3/views/FloatingIconView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/n;->d:Lcom/android/launcher3/views/FloatingIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->fastFinish()V

    return-void
.end method