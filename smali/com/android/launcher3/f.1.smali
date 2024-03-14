.class public final synthetic Lcom/android/launcher3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/f;->d:Lcom/android/launcher3/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/f;->d:Lcom/android/launcher3/BaseActivity;

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->a(Lcom/android/launcher3/BaseActivity;)V

    return-void
.end method
