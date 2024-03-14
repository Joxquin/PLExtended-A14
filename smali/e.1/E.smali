.class public final synthetic Le/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/e;


# instance fields
.field public final synthetic d:Le/F;


# direct methods
.method public synthetic constructor <init>(Le/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/E;->d:Le/F;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Le/E;->d:Le/F;

    invoke-virtual {p0, p1}, Le/F;->g(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
