Public Class FindById
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If Not txtID.Text.Equals("") Then
            SqlDataSource2.SelectCommand = "SELECT [ImageUri], [ArtPieceId], [ArtPieceName], [FirstName], [LastName] FROM [art_piece] INNER JOIN [artist] ON [FkArtistId]=[ArtistId] WHERE [ArtPieceId] = " + txtID.Text
        Else
            SqlDataSource2.SelectCommand = "SELECT [ImageUri], [ArtPieceId], [ArtPieceName], [FirstName], [LastName] FROM [art_piece] INNER JOIN [artist] ON [FkArtistId]=[ArtistId]"
        End If
        gdvArtPiece.DataBind()

        If gdvArtPiece.Rows.Count = 1 Then
            lblInfo.Text = "Found!"
            lblInfo.ForeColor = Drawing.Color.Green
        Else
            lblInfo.Text = "Not Found!"
            lblInfo.ForeColor = Drawing.Color.Red
        End If
    End Sub

End Class