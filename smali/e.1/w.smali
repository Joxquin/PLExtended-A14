.class public final synthetic Le/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic d:Le/D;


# direct methods
.method public synthetic constructor <init>(Le/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/w;->d:Le/D;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Le/w;->d:Le/D;

    invoke-virtual {p0}, Le/D;->N()Z

    return-void
.end method
