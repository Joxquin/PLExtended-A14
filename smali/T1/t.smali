.class public final LT1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# instance fields
.field public final synthetic a:LT1/x;


# direct methods
.method public constructor <init>(LT1/x;)V
    .locals 0

    iput-object p1, p0, LT1/t;->a:LT1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getChangedDocumentIds()Ljava/util/Set;

    move-result-object p1

    const-string v0, "zp"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ZeroStateWebSuggestDataLoader"

    const-string v0, "App search zero state updated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, LT1/t;->a:LT1/x;

    invoke-virtual {p0}, LT1/x;->d()V

    :cond_0
    return-void
.end method

.method public final onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .locals 0

    return-void
.end method
